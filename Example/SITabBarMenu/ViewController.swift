//
//  ViewController.swift
//  SITabBarMenu
//
//  Created by siyadkpm on 03/22/2020.
//  Copyright (c) 2020 siyadkpm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let tabStyleArray: [String] = ["NORMAL  VIEW WITH OVAL SHAPED", " NORMAL   VIEW WITH SQUARE  SHAPED", "SQUARE VIEW", "OVAL SHAPED BORDER  VIEW", "SQUARE SHAPED BORDER  VIEW","OVAL SHAPED   VIEW"]

        let cellReuseIdentifier = "cell"
        @IBOutlet  weak var tableView: UITableView!

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)

        }

    }

    extension ViewController: UITableViewDataSource {
        
        // number of rows in table view
          func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return self.tabStyleArray.count
          }

          // create a cell for each table view row
          func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

              // create a new cell if needed or reuse an old one
            let cell:UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!

              // set the text from the data model
              cell.textLabel?.text = self.tabStyleArray[indexPath.row]

              return cell
          }
    }

    extension ViewController: UITableViewDelegate {

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "TabDemoViewID") as! TabDemoViewController
            VC1.selectedMenuStyle = indexPath.row
            VC1.modalPresentationStyle = .fullScreen
            self.present(VC1, animated:true, completion: nil)

        }

    }

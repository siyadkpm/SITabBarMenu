//
//  TabDemoViewController.swift
//  DemoSIYATabBar
//
//  Created by SIYAD Kunju on 20/03/20.
//  Copyright © 2020 SIYAD. All rights reserved.
//

import UIKit
import SITabBarMenu



class TabDemoViewController: UIViewController {

    @IBOutlet var tabView: UIView!
    @IBOutlet var centreLabel: UILabel!
    
    var tabMenuView: SITabMenuView!
    var titleArray: [String] = []
    fileprivate var options: MenuOptions!
    
    var selectedMenuStyle = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadSubmenuView()
    }
    
      func loadSubmenuView(){
             
            let bounds = UIScreen.main.bounds
            let width = bounds.size.width

            
            titleArray = ["All","Movies","Songs","Album","Technologies","Sports","Trends"]
            self.centreLabel.text = titleArray[0]
            
            
            options = MenuOptions.init()
            
            options.backgroundColor = UIColor.white
            options.font = UIFont.systemFont(ofSize: 16)
            options.menuHeight = 60
            options.selectedIndex = 0
            
            if(selectedMenuStyle == 0){
            
                 options.menuStyle = .normalTab
            
            }
            else if(selectedMenuStyle == 1){
            
                 options.menuStyle = .squareTab
                 options.borderWidth = 0
            
            }
            else if(selectedMenuStyle == 2){
                      
                 options.menuStyle = .squareTab
                 options.borderWidth = 0
         
                 options.selectedMenuBgColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 1)
                 options.selectedMenuBorderColor = UIColor.clear
                 options.selectedMenuShadowColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 0.50)
                 options.selectedTextColor = UIColor.white
                 options.isShadowNeedsSelectedMenu = true
         
         
                 options.unSelectedMenuBgColor = UIColor(red: 198.0/255.0, green: 198.0/255.0, blue: 200.0/255.0, alpha: 1)
                 options.unSelectedMenuBorderColor = UIColor.clear
                 options.unSelectedMenuShadowColor = UIColor.clear
                 options.unSelectedTextColor = UIColor.darkGray
                 options.isShadowNeedsUnSelectedMenu = false
           }
           else if(selectedMenuStyle == 3){
                
                 options.menuStyle = .borderOvalTab
                 options.borderWidth = 1
                
                 options.selectedMenuBgColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 0.30)
                 options.selectedMenuBorderColor = UIColor.clear
                 options.selectedTextColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 1)
                 options.isShadowNeedsSelectedMenu = false
                
                
                 options.unSelectedMenuBgColor = UIColor.clear
                 options.unSelectedMenuBorderColor = UIColor(red: 198.0/255.0, green: 198.0/255.0, blue: 200.0/255.0, alpha: 1)
                 options.unSelectedTextColor = UIColor.lightGray
                 options.isShadowNeedsUnSelectedMenu = false
                
           }
           else if(selectedMenuStyle == 4){

 
                  options.menuStyle = .borderSquareTab
                  options.borderWidth = 1
            
                  options.selectedMenuBgColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 0.30)
                  options.selectedMenuBorderColor = UIColor.clear
                  options.selectedTextColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 1)
                  options.isShadowNeedsSelectedMenu = false
            
            
                  options.unSelectedMenuBgColor = UIColor.clear
                  options.unSelectedMenuBorderColor = UIColor(red: 198.0/255.0, green: 198.0/255.0, blue: 200.0/255.0, alpha: 1)
                  options.unSelectedTextColor = UIColor.lightGray
                  options.isShadowNeedsUnSelectedMenu = false
                
           }
            
           else if(selectedMenuStyle == 5){

                  options.menuStyle = .ovalShapedTab
     
                  options.selectedMenuBgColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 0.30)
                  options.selectedMenuBorderColor = UIColor.clear
                  options.selectedTextColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 1)
                  options.isShadowNeedsSelectedMenu = false
     
     
                  options.unSelectedMenuBgColor = UIColor(red: 198.0/255.0, green: 198.0/255.0, blue: 200.0/255.0, alpha: 1)
                  options.unSelectedMenuBorderColor = UIColor.clear
                  options.unSelectedMenuShadowColor = UIColor.clear
                  options.unSelectedTextColor = UIColor.darkGray
                  options.isShadowNeedsUnSelectedMenu = false
           }
            
            
    
            self.tabMenuView = SITabMenuView(collectionViewframe: CGRect(x: 0, y: 0, width: Int(width), height: options.menuHeight), nameArray: titleArray,menuOption : options)
            self.tabMenuView.delegate = self
            self.tabView.addSubview(self.tabMenuView)
            
    }
        
    
    @IBAction func back(sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
          
    }
     
    
}

extension TabDemoViewController: SITabMenuViewDelegate {
    
    func selectedMenu(index: Int){

        centreLabel.text = self.titleArray[index]
     }
}

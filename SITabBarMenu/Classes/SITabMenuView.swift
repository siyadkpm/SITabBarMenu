//
//  SITabMenuView.swift
//  SITabBarMenu
//
//  Created by SIYAD Kunju on 22/03/20.
//

import UIKit

public protocol SITabMenuViewDelegate: class {
    func selectedMenu(index: Int)
}

public class SITabMenuView: UIView {

    @IBOutlet public var contentView: UIView!
    public weak var delegate: SITabMenuViewDelegate?
    public var collectionView: UICollectionView!
    fileprivate var cellForSize: MenuCollCell!
    fileprivate var cachedCellSizes: [IndexPath: CGSize] = [:]
    let nibName = "SITabMenuView"
    public var cellSize: CGSize!
    public var titleArray: [String] = []
    fileprivate var currentIndex: Int = 0
    
    fileprivate var options: MenuOptions!


    public init(collectionViewframe: CGRect,nameArray : [String],menuOption : MenuOptions) {
            
            super.init(frame: collectionViewframe)
        
            options = MenuOptions.init()
            options = menuOption
            
            Bundle(for: SITabMenuView.self).loadNibNamed("SITabMenuView", owner: self, options: nil)
             self.titleArray = nameArray
             currentIndex = options.selectedIndex
             contentView.frame = collectionViewframe
            
             let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
             layout.scrollDirection = .horizontal
             layout.itemSize = CGSize(width: Int(contentView.frame.width), height: options.menuHeight)
          

             collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: Int(contentView.frame.width), height: options.menuHeight), collectionViewLayout: layout)
             collectionView.dataSource = self
             collectionView.delegate = self
             collectionView.showsHorizontalScrollIndicator = false
             collectionView.showsVerticalScrollIndicator = false
             collectionView.backgroundColor = options.backgroundColor
           
             
            let bundle = Bundle(for: SITabMenuView.self)
            let nib = UINib(nibName: MenuCollCell.cellIdentifier(), bundle: bundle)
            collectionView.register(nib, forCellWithReuseIdentifier: MenuCollCell.cellIdentifier())
            cellForSize = nib.instantiate(withOwner: nil, options: nil).first as? MenuCollCell
            
            layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
      
            addSubview(collectionView)

        
          
        }
    
        required public init?(coder aDecoder: NSCoder) {
             super.init(coder: aDecoder)
         }

     

    }

    extension SITabMenuView: UICollectionViewDataSource {

        
        public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.titleArray.count
        }

        public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCollCell.cellIdentifier(), for: indexPath) as! MenuCollCell
            cell.options = self.options
            cell.backgroundColor = UIColor.clear
            configureCell(cell, indexPath: indexPath)
            cell.isCurrent =  indexPath.row == currentIndex


            cell.tabItemButtonPressedBlock = {()-> Void in
                
                self.currentIndex = indexPath.row
                self.collectionView.reloadData()
                if ((indexPath.row) < self.titleArray.count - 1){

                     collectionView.scrollToItem(at:IndexPath(item: self.currentIndex, section: 0), at: .left, animated: true)
                }
                else{
                     collectionView.scrollToItem(at:IndexPath(item: self.currentIndex, section: 0), at: .right, animated: true)
                }
                self.delegate?.selectedMenu(index: self.currentIndex)

            }
            return cell
        }

        fileprivate func configureCell(_ cell: MenuCollCell, indexPath: IndexPath){

            cell.itemLabel.text = titleArray[indexPath.row]
         }
        public func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
           
            
                
            }
        }

    extension SITabMenuView: UICollectionViewDelegateFlowLayout {

    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        configureCell(cellForSize, indexPath: indexPath)
              
        let font =  options.font
        let lblWidth = Int(widthForLabel(text:self.titleArray[indexPath.row], font: font, height: CGFloat(options.menuHeight - 20)))
        
        let size =  CGSize(width: lblWidth + 50, height: options.menuHeight)
        cachedCellSizes[indexPath] = size

        return size
        
        }
        
        public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
               return 0.0
           }

           public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
               return 0.0
           }
           
           public func widthForLabel(text:String, font:UIFont, height:CGFloat) -> CGFloat{
                let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width:
                CGFloat.greatestFiniteMagnitude, height: height))
                label.numberOfLines = 0
                label.lineBreakMode = NSLineBreakMode.byCharWrapping
                label.font = font
                label.text = text
                label.sizeToFit()
                return label.frame.width
             }

    }

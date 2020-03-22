//
//  MenuCollCell.swift
//  SITabBarMenu
//
//  Created by SIYAD Kunju on 22/03/20.
//

import UIKit

class MenuCollCell: UICollectionViewCell {

     @IBOutlet var bgView: UIView!
     @IBOutlet  weak var itemLabel: UILabel!

     var title : String!
     var tabItemButtonPressedBlock:(()-> Void)!
     var options: MenuOptions!


        override func awakeFromNib() {
            super.awakeFromNib()

            options = MenuOptions.init()
            self.unSelectedTab()
        }

        
        class func cellIdentifier() -> String {
            return "MenuCollCell"
        }
        
        var isCurrent: Bool = false {
             didSet {

                 if isCurrent {
                     selectedTab()
                 } else {
                     unSelectedTab()
                 }
                 layoutIfNeeded()
             }
         }
    
}

//MARK : Tab Creation
extension MenuCollCell {
      
        func selectedTab() {
            
            self.itemLabel?.font = options.font
            switch options.menuStyle {
                   case .normalTab:
                       self.normalMenuStyle(isSelect: true)
                       break
                   case .ovalShapedTab:
                       self.ovalMenuStyle(isSelect: true)
                       break
                   case .squareTab:
                       self.squareMenuStyle(isSelect: true)
                       break
                   case .borderOvalTab:
                       self.borderOvalMenuStyle(isSelect: true)
                       break
                   case .borderSquareTab:
                       self.borderSquareMenuStyle(isSelect: true)
                       break
            }

        }

        func unSelectedTab() {
            
            self.itemLabel?.font = options.font
            switch options.menuStyle {
                   case .normalTab:
                       self.normalMenuStyle(isSelect: false)
                       break
                   case .ovalShapedTab:
                       self.ovalMenuStyle(isSelect: false)
                       break
                   case .squareTab:
                       self.squareMenuStyle(isSelect: false)
                       break
                   case .borderOvalTab:
                       self.borderOvalMenuStyle(isSelect: false)
                       break
                   case .borderSquareTab:
                       self.borderSquareMenuStyle(isSelect: false)
                       break
           }
        }
        
    
        //MARK : Normal Tab Menu
        func normalMenuStyle(isSelect : Bool){
            
            self.bgView.layer.cornerRadius = CGFloat((options.menuHeight - 20) / 2)
            if(isSelect){
                
                self.bgView.backgroundColor = options.selectedMenuBgColor
                self.bgView.layer.borderWidth = CGFloat(options.borderWidth)
                self.bgView.layer.borderColor = options.selectedMenuBorderColor.cgColor
                     itemLabel.textColor = options.selectedTextColor
                self.bgView.layer.shadowColor = (options.isShadowNeedsSelectedMenu) ? options.selectedMenuShadowColor.cgColor : UIColor.clear.cgColor
                 self.bgView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
                 self.bgView.layer.shadowOpacity = 1.0
                 self.bgView.layer.shadowRadius = 4.0
                 self.bgView.layer.masksToBounds = false
            }
            else {
                
                bgView.layer.shadowColor = UIColor.clear.cgColor
                bgView.backgroundColor = UIColor.clear
                self.bgView.layer.borderWidth = 0
                self.bgView.layer.borderColor = UIColor.clear.cgColor
                itemLabel.textColor = options.unSelectedTextColor

            }
        }
    
         //MARK : Oval Shaped Tab Menu
        func ovalMenuStyle(isSelect : Bool){
            
            self.bgView.layer.cornerRadius = CGFloat((options.menuHeight - 20) / 2)

                 if(isSelect){
                                   
                     self.bgView.backgroundColor = options.selectedMenuBgColor
                     self.bgView.layer.borderColor = options.selectedMenuBorderColor.cgColor
                     itemLabel.textColor = options.selectedTextColor
                     self.bgView.layer.shadowColor = (options.isShadowNeedsSelectedMenu) ? options.selectedMenuShadowColor.cgColor : UIColor.clear.cgColor
                     
                 }
                 else {
                            
                      self.bgView.backgroundColor = options.unSelectedMenuBgColor
                      self.bgView.layer.borderColor = options.unSelectedMenuBorderColor.cgColor
                      itemLabel.textColor = options.unSelectedTextColor
                      self.bgView.layer.shadowColor = (options.isShadowNeedsUnSelectedMenu) ? options.unSelectedMenuShadowColor.cgColor : UIColor.clear.cgColor
                 }
                        
                 self.bgView.layer.borderWidth = CGFloat(options.borderWidth)
                 self.bgView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
                 self.bgView.layer.shadowOpacity = 1.0
                 self.bgView.layer.shadowRadius = 4.0
                 self.bgView.layer.masksToBounds = false
               
        }
    
        //MARK : Square Shaped Tab Menu
        func squareMenuStyle(isSelect : Bool){
           
            self.bgView.layer.cornerRadius = 8.0
            if(isSelect){
                       
                self.bgView.backgroundColor = options.selectedMenuBgColor
                self.bgView.layer.borderColor = options.selectedMenuBorderColor.cgColor
                itemLabel.textColor = options.selectedTextColor
                self.bgView.layer.shadowColor = (options.isShadowNeedsSelectedMenu) ? options.selectedMenuShadowColor.cgColor : UIColor.clear.cgColor
         
            }
            else {
                
                self.bgView.backgroundColor = options.unSelectedMenuBgColor
                self.bgView.layer.borderColor = options.unSelectedMenuBorderColor.cgColor
                itemLabel.textColor = options.unSelectedTextColor
                self.bgView.layer.shadowColor = (options.isShadowNeedsUnSelectedMenu) ? options.unSelectedMenuShadowColor.cgColor : UIColor.clear.cgColor
            }
            
            self.bgView.layer.borderWidth = CGFloat(options.borderWidth)
            self.bgView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            self.bgView.layer.shadowOpacity = 1.0
            self.bgView.layer.shadowRadius = 4.0
            self.bgView.layer.masksToBounds = false
        }
        
        //MARK : Border with Oval Shaped Tab Menu
        func borderOvalMenuStyle(isSelect : Bool){
            
            
            self.bgView.layer.cornerRadius = CGFloat((options.menuHeight - 20) / 2)

            if(isSelect){
                              
                self.bgView.backgroundColor = options.selectedMenuBgColor
                self.bgView.layer.borderColor = options.selectedMenuBorderColor.cgColor
                itemLabel.textColor = options.selectedTextColor
                self.bgView.layer.shadowColor = (options.isShadowNeedsSelectedMenu) ? options.selectedMenuShadowColor.cgColor : UIColor.clear.cgColor
                
            }
            else {
                       
                 self.bgView.backgroundColor = options.unSelectedMenuBgColor
                 self.bgView.layer.borderColor = options.unSelectedMenuBorderColor.cgColor
                 itemLabel.textColor = options.unSelectedTextColor
                 self.bgView.layer.shadowColor = (options.isShadowNeedsUnSelectedMenu) ? options.unSelectedMenuShadowColor.cgColor : UIColor.clear.cgColor
            }
                   
            self.bgView.layer.borderWidth = CGFloat(options.borderWidth)
            self.bgView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            self.bgView.layer.shadowOpacity = 1.0
            self.bgView.layer.shadowRadius = 4.0
            self.bgView.layer.masksToBounds = false
        }
        
         //MARK : Border with Square Shaped Tab Menu
        func borderSquareMenuStyle(isSelect : Bool){
            
            self.bgView.layer.cornerRadius = 8.0
            if(isSelect){
                              
                self.bgView.backgroundColor = options.selectedMenuBgColor
                self.bgView.layer.borderColor = options.selectedMenuBorderColor.cgColor
                itemLabel.textColor = options.selectedTextColor
                self.bgView.layer.shadowColor = (options.isShadowNeedsSelectedMenu) ? options.selectedMenuShadowColor.cgColor : UIColor.clear.cgColor
                
            }
            else {
                       
                 self.bgView.backgroundColor = options.unSelectedMenuBgColor
                 self.bgView.layer.borderColor = options.unSelectedMenuBorderColor.cgColor
                 itemLabel.textColor = options.unSelectedTextColor
                 self.bgView.layer.shadowColor = (options.isShadowNeedsUnSelectedMenu) ? options.unSelectedMenuShadowColor.cgColor : UIColor.clear.cgColor
            }
                   
            self.bgView.layer.borderWidth = CGFloat(options.borderWidth)
            self.bgView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            self.bgView.layer.shadowOpacity = 1.0
            self.bgView.layer.shadowRadius = 4.0
            self.bgView.layer.masksToBounds = false
        }
        
}


    // MARK: - IBAction
extension MenuCollCell {
    
        @IBAction fileprivate func tabItemTouchUpInside(_ button: UIButton) {
           tabItemButtonPressedBlock?()
           
        }
        
}


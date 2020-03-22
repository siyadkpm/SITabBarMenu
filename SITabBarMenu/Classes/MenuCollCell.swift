//
//  MenuCollCell.swift
//  SITabBarMenu
//
//  Created by SIYAD Kunju on 22/03/20.
//

import UIKit

public class MenuCollCell: UICollectionViewCell {

     @IBOutlet public var bgView: UIView!
     @IBOutlet  public weak var itemLabel: UILabel!

     public var title : String!
     public var tabItemButtonPressedBlock:(()-> Void)!
     public var options: MenuOptions!


        override public func awakeFromNib() {
            super.awakeFromNib()

            options = MenuOptions.init()
            self.unSelectedTab()
        }

        
        public class func cellIdentifier() -> String {
            return "MenuCollCell"
        }
        
        public var isCurrent: Bool = false {
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
      
        public func selectedTab() {
            
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

        public func unSelectedTab() {
            
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
        public func normalMenuStyle(isSelect : Bool){
            
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
        public func ovalMenuStyle(isSelect : Bool){
            
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
        public func squareMenuStyle(isSelect : Bool){
           
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
        public func borderOvalMenuStyle(isSelect : Bool){
            
            
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
        public func borderSquareMenuStyle(isSelect : Bool){
            
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
    
        @IBAction public func tabItemTouchUpInside(_ button: UIButton) {
           tabItemButtonPressedBlock?()
           
        }
        
}


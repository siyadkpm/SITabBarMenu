//
//  MenuOptions.swift
//  SITabBarMenu
//
//  Created by SIYAD Kunju on 22/03/20.
//

import UIKit

public class MenuOptions {
 
    
    open var selectedMenuBgColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 1)
    open var selectedMenuBorderColor = UIColor.clear
    open var selectedMenuShadowColor = UIColor(red: 90.0/255.0, green: 156.0/255.0, blue: 246.0/255.0, alpha: 0.50)
    open var selectedTextColor = UIColor.white
    open var isShadowNeedsSelectedMenu: Bool = true
    
    
    open var unSelectedMenuBgColor = UIColor.clear
    open var unSelectedMenuBorderColor = UIColor(red: 198.0/255.0, green: 198.0/255.0, blue: 200.0/255.0, alpha: 1)
    open var unSelectedMenuShadowColor = UIColor.clear
    open var unSelectedTextColor = UIColor(red: 179/255, green: 177/255, blue: 174/255, alpha: 1.0)
    open var isShadowNeedsUnSelectedMenu: Bool = false
    
    
    
    
    open var font = UIFont.systemFont(ofSize: 16)
    open var menuStyle: MenuStyle = .normalTab
    open var menuHeight: Int = 60
    open var selectedIndex: Int = 0
    open var borderWidth: Int = 1
    open var backgroundColor = UIColor.white
    
    
    
    public enum MenuStyle{
         case ovalShapedTab
         case borderSquareTab
         case borderOvalTab
         case squareTab
         case normalTab
    }
    
    public init() {}

}


# SITabBarMenu

[![CI Status](https://img.shields.io/travis/siyadkpm/SITabBarMenu.svg?style=flat)](https://travis-ci.org/siyadkpm/SITabBarMenu)
[![Version](https://img.shields.io/cocoapods/v/SITabBarMenu.svg?style=flat)](https://cocoapods.org/pods/SITabBarMenu)
[![License](https://img.shields.io/cocoapods/l/SITabBarMenu.svg?style=flat)](https://cocoapods.org/pods/SITabBarMenu)
[![Platform](https://img.shields.io/cocoapods/p/SITabBarMenu.svg?style=flat)](https://cocoapods.org/pods/SITabBarMenu)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

OS Version : iOS 11.0 & Later - Language : Swift 5.0 & Later

## Installation

SITabBarMenu is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SITabBarMenu'
```

Manually :

   a.  Download the Demo Project 
   b.  Drag & drop “SITabBarMenu” folder in your project 

Implementation

  1. Import SITabBarMenu

  2.  In your Storyboard Add an UIView or programmatically add UIView in your viewDidLoad

  3. Add SIYATabView in your UIView using below Code

    titleArray = ["All","Movies","Songs","Album","Technologies","Sports","Trends"]
    Let options = MenuOptions.init()
    options.menuStyle = .normalTab
    Let menuView = SITabMenuView(collectionViewframe: CGRect(x: 0, y: 0, width: Int(width), height: options.menuHeight), nameArray: titleArray,menuOption : options)//height of the tab bar should be same as yourview and need to assign options.menuHeight,(if not assign default height is 60) ,if you want change pls do option.menuHeight =  60,width you can add any size
    menuView.delegate = self
    yourview.addSubview(menuView)
    

  4. Menuoption Examples

    options.backgroundColor = UIColor.white - (Change your Tab background color)
    options.font = UIFont.systemFont(ofSize: 16)  (Change your Title font ) 
    options.menuHeight = 60 (Change your Menu Height)
    options.selectedIndex = 0 (change your tab selection)
    options.borderWidth = 1 (change your border width )
   

    options.selectedMenuBgColor = UIColor.red (Change your selected menu background color)
    options.selectedMenuBorderColor = UIColor.red(Change your selected menu border color)
    options.selectedMenuShadowColor = UIColor.blue(Change your selected menu shadow color)

    options.selectedTextColor = UIColor.white(Change your selected menu title text color)
    options.isShadowNeedsSelectedMenu  = true (If you no need shadow on selected menu change to false)



    options.unSelectedMenuBgColor = UIColor.red (Change your unselected menu background color)
    options.unSelectedMenuBorderColor = UIColor.red(Change your unselected menu border color)
    options.unSelectedMenuShadowColor =  UIColor.blue(Change your unselected menu shadow color)
    options.unSelectedTextColor = UIColor.white(Change your unselected menu title text color)
    options.isShadowNeedsUnSelectedMenu  = false(If you no need shadow on unselected menu change to false)

   
  5. Tab Menu Style

    options.menuStyle = .normalTab(NORMAL  VIEW WITH OVAL SHAPED)
    options.menuStyle = .squareTab / options.borderWidth = 0 (NORMAL   VIEW WITH SQUARE  SHAPED)
    options.menuStyle = .squareTab (SQUARE VIEW)
    options.menuStyle = .borderOvalTab (OVAL SHAPED BORDER  VIEW)
    options.menuStyle = .borderSquareTab (SQUARE SHAPED BORDER  VIEW)
    options.menuStyle = .ovalShapedTab (OVAL SHAPED   VIEW)        


6. Delegate Method for SITabMenu (in this delegate you will get selected tab index)

        func selectedMenu(index: Int){

           centreLabel.text = self.titleArray[index]
        }
    
## Author

siyadkpm, siyadkpm@gmail.com

## License

SITabBarMenu is available under the MIT license. See the LICENSE file for more info.

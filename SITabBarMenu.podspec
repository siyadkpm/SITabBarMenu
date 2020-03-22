#
# Be sure to run `pod lib lint SITabBarMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SITabBarMenu'
  s.version          = '0.1.0'
  s.summary          = 'Custom Tab bar menu for iOS Application.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SITabBarMenu is helped to implements Custom tab bar to your iOS Project easily.This tab bar is included 6 different style.You can easily change tab style,color & font.
                       DESC

  s.homepage         = 'https://github.com/siyadkpm/SITabBarMenu'
  s.screenshots     = 'https://pasteboard.co/J0eTG4c.png','https://pasteboard.co/J0eTZxs.png','https://pasteboard.co/J0eUgLO.png','https://pasteboard.co/J0eUrDv.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'siyadkpm' => 'siyadkpm@gmail.com' }
  s.source           = { :git => 'https://github.com/siyadkpm/SITabBarMenu.git', :tag => '0.1.0' }
  s.social_media_url = 'https://twitter.com/siyadkpm'

  s.ios.deployment_target = '11.0'

  s.source_files = 'SITabBarMenu/Classes/*'
  
   s.resource_bundles = {
     'SITabBarMenu' => ['SITabBarMenu/Classes/*.xib']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version = '5.0'
end

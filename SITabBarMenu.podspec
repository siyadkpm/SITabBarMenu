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
  # s.screenshots     = 'https://drive.google.com/file/d/1hz96ENBeM5gTdNk6IkEqf5qpKWX1pNRY', 'https://drive.google.com/open?id=1lAqvt4pYXf02qyipVc2ensDAQc_D1Fgs','https://drive.google.com/open?id=1KpTYha5nGGltw1U4Jg2v9Fjorzs6Vp7V','https://drive.google.com/open?id=1QVJ2Adm25yaKDweOs2Tdc_MKue7Xz0ce','https://drive.google.com/open?id=1r56vvGRS31_ClPe9IiVuJR--2CmPPXWw','https://drive.google.com/open?id=1D6fJCAORHtvThQYhE-ZAEZvGtchHMn3V'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'siyadkpm' => 'siyadkpm@gmail.com' }
  s.source           = { :git => 'https://github.com/siyadkpm/SITabBarMenu.git', :tag => '0.1.0' }
  s.social_media_url = 'https://twitter.com/siyadkpm'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SITabBarMenu/Classes/*.swift'
  s.resource_bundles = 'SITabBarMenu/Classes/*.xib'
  
  # s.resource_bundles = {
  #   'SITabBarMenu' => ['SITabBarMenu/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version = '5.0'
end

#
# Be sure to run `pod lib lint KYC-iOS-Native.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KYC-iOS-Native'
  s.version          = '0.5.0'
  s.summary          = 'This library use to scan docs of user and validate KYC'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/faceki/KYC-iOS-Native'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'faceki' => 'info@faceki.com' }
  s.source           = { :git => 'https://github.com/faceki/KYC-iOS-Native.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'KYC-iOS-Native/Classes/**/*'
  
  s.resource_bundles = {
    
    'Resources' => ['KYC-iOS-Native/MainFACEKI.{png,storyboard,lproj,gif}','KYC-iOS-Native/Faceki-Verifing-animation2.{gif}','KYC-iOS-Native/Assets/Scan ID front side.{png,jpg}','KYC-iOS-Native/Assets/Scan ID back side.{png,jpg}','KYC-iOS-Native/Assets/Take a selfie picture.{png,jpg}','KYC-iOS-Native/Assets/verifyAnimation.{png,jpg}','KYC-iOS-Native/Assets/VerifyBlurBack.{png,jpg}' ,'KYC-iOS-Native/Assets/appstore.{png,jpg}','KYC-iOS-Native/Assets/Extra Check Required.{png,jpg}','KYC-iOS-Native/Assets/Flip Camera.{png,jpg}','KYC-iOS-Native/Assets/Successful.{png,jpg}','KYC-iOS-Native/Assets/Passport black.{png,jpg}','KYC-iOS-Native/Assets/appstore1.{png,jpg}','KYC-iOS-Native/Assets/Driving back black.{png,jpg}','KYC-iOS-Native/Assets/Driving back.{png,jpg}','KYC-iOS-Native/Assets/Driving Front black.{png,jpg}','KYC-iOS-Native/Assets/Driving Front.{png,jpg}','KYC-iOS-Native/Assets/framesArtboard 1.{png,jpg}','KYC-iOS-Native/Assets/FRONT SIDE- 2.{png,jpg}','KYC-iOS-Native/Assets/Passport.{png,jpg}','KYC-iOS-Native/Assets/Camera- Take a Selfie.{png,jpg}','KYC-iOS-Native/Assets/Splash.{png,jpg}','KYC-iOS-Native/Assets/BACK SIDE -2.{png,jpg}','KYC-iOS-Native/Assets/TaleSelfie.{png,jpg}','KYC-iOS-Native/Assets/TaleSelfie1.{png,jpg}','KYC-iOS-Native/Assets/Artboard 2 copy 8.{png,jpg}','KYC-iOS-Native/Assets/Artboard 2 copy 9.{png,jpg}','KYC-iOS-Native/24-approved-checked-outline.{gif}','KYC-iOS-Native/25-error-cross-outline.{gif}','KYC-iOS-Native/Assets/VeryfyImg.{png,jpg}']
    
    
  }

 # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'AVKit', 'AVFoundation', 'Vision'
  s.dependency 'Alamofire', '~> 5.0'
  s.dependency 'MBProgressHUD'
  s.dependency 'IQKeyboardManagerSwift'
  s.dependency 'SwiftyGif'
  
  
end

#
# Be sure to run `pod lib lint FSImageView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FSImageView"
  s.version          = "0.1.0"
  s.summary          = "Tapping UIImageView to see full-size Image for iOS"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        This framework provide an easy way to use class to show full-size image when tapping on UIImageView.
The full-size image can be full screen or custom-size UIView. When user tap the customed UIImageVIew, there will be a animation transation between UIImageView and full-size UIView. Two delegates were prepared for actions during two transation process.
                       DESC

  s.homepage         = "https://github.com/gfxcc/FSImageView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "YongCao" => "yong_stevens@outlook.com" }
  s.source           = { :git => "https://github.com/gfxcc/FSImageView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FSImageView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

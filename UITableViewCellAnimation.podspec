#
# Be sure to run `pod lib lint UITableViewCellAnimation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UITableViewCellAnimation'
  s.version          = '1.0.6'
  s.summary          = 'UITableViewCellAnimation use for basic tableviewcell animation'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UITableViewCellAnimation is collections of animation that helps to best way represent tableview in application.
                       DESC

  s.homepage         = 'https://github.com/pratik-123/UITableViewCellAnimation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pratik Lad' => 'pratik.lad@outlook.com' }
  s.source           = { :git => 'https://github.com/pratik-123/UITableViewCellAnimation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UITableViewCellAnimation/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UITableViewCellAnimation' => ['UITableViewCellAnimation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

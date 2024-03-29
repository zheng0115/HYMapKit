#
# Be sure to run `pod lib lint HYMapKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HYMapKit"
  s.version          = "0.1.0"
  s.summary          = "HYMapKit"
  s.description      = "方便切换不同种类地图"
  s.homepage         = "https://github.com/parallelWorld/HYMapKit"
  s.license          = 'MIT'
  s.author           = { "parallelWorld" => "654269765@qq.com" }
  s.source           = { :git => "https://github.com/parallelWorld/HYMapKit.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  s.frameworks = 'UIKit', 'MapKit'
end

#
# Be sure to run `pod lib lint ZWebKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = "ZWebKit"
  s.version = "1.0.0"
  s.summary = "ZWebKit"
  s.description = <<-DESC
  ZWebKit
                       DESC
  s.homepage = "https://github.com/lZackx/ZWebKit"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "lZackx" => "lzackx@lzackx.com" }
  s.source = { :git => "https://github.com/lZackx/ZWebKit.git", :tag => s.version.to_s }
  s.ios.deployment_target = "13.0"
  s.swift_versions = ["5.0"]
  s.source_files = "ZWebKit/Classes/**/*"
  s.resource_bundles = {
    "ZWebKit" => ["ZWebKit/Assets/*.js"],
  }
  s.frameworks = "UIKit", "WebKit"
  s.dependency "Cordova"
end

#
#  Be sure to run `pod spec lint GT.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "GT"
  spec.version      = "2.2.3"
  spec.summary      = "A short description of GT."
  spec.homepage     = "https://github.com/Peterbald/GT"
  spec.license      = "MIT"
  spec.author       = { "Peterbald" => "zhannailong@163.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/Peterbald/GT.git", :tag => "#{spec.version}" }
  spec.source_files  = "ios/GT/Sources/**/*.{h,m}", 'ios/lib/**/*.h'
  spec.public_header_files = "ios/GT/Sources/Headers/**/*.{h,m}"
  spec.resources = "ios/GTResources/**/*{html,png,strings,}"
  spec.prefix_header_file = 'ios/GT/GT-Prefix.pch'
  spec.ios.vendored_libraries = 'ios/lib/**/*.a'
  spec.frameworks = "UIKit", "Foundation", "SystemConfiguration", "MobileCoreServices", "Security", "CFNetwork", "QuartzCore", "CoreFoundation", "CoreGraphics", "CoreText", "CoreLocation", "CoreTelephony"
  spec.libraries = "iconv", "xml2", "z", "sqlite3"
  spec.requires_arc = true
  spec.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO'
  }

end

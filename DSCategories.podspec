#
#  Be sure to run `pod spec lint DSCategories.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "DSCategories"
  s.version      = "0.0.7"
  s.summary      = "分类"
  s.description  = <<-DESC
                      分类,UIButton+frame,UITextView+Placeholder,NSString+Size,NSArray+SafeAccess,NSDictionary+SafeAccess
                   DESC

  s.homepage     = "https://github.com/walkdianzi/DSCategories"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "dasheng" => "398411773@qq.com" }
  s.platform     = :ios
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/walkdianzi/DSCategories.git", :tag => "0.0.7" }
  s.source_files  = "Categories", "Categories/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  s.public_header_files = "Categories/**/*.h"

end

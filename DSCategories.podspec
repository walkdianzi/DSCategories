#
#  Be sure to run `pod spec lint DSCategories.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "DSCategories"
  s.version      = "0.1.3"
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
  s.source       = { :git => "https://github.com/walkdianzi/DSCategories.git", :tag => "0.1.3" }
  # s.source_files  = "Categories", "Categories/**/*.{h,m}"
  s.resource = "Categories/DSCategories.bundle"
  s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Categories/**/*.h"

  s.subspec 'NSString' do |ss|
     ss.source_files = 'Categories/Foundation/NSString/*.{h,m}'
     ss.public_header_files = 'Categories/Foundation/NSString/*.h'
  end

  s.subspec 'NSArray' do |ss|
     ss.source_files = 'Categories/Foundation/NSArray/*.{h,m}'
     ss.public_header_files = 'Categories/Foundation/NSArray/*.h'
  end

  s.subspec 'NSData' do |ss|
     ss.source_files = 'Categories/Foundation/NSData/*.{h,m}'
     ss.public_header_files = 'Categories/Foundation/NSData/*.h'
  end

  s.subspec 'NSDictionary' do |ss|
     ss.source_files = 'Categories/Foundation/NSDictionary/*.{h,m}'
     ss.public_header_files = 'Categories/Foundation/NSDictionary/*.h'
  end

  s.subspec 'NSUserDefaults' do |ss|
     ss.source_files = 'Categories/Foundation/NSUserDefaults/*.{h,m}'
     ss.public_header_files = 'Categories/Foundation/NSUserDefaults/*.h'
  end

  s.subspec 'UIButton' do |ss|
     ss.source_files = 'Categories/UIKits/UIButton/*.{h,m}'
     ss.public_header_files = 'Categories/UIKits/UIButton/*.h'
  end

  s.subspec 'UIColor' do |ss|
     ss.source_files = 'Categories/UIKits/UIColor/*.{h,m}'
     ss.public_header_files = 'Categories/UIKits/UIColor/*.h'
  end

  s.subspec 'UIImage' do |ss|
     ss.source_files = 'Categories/UIKits/UIImage/*.{h,m}'
     ss.public_header_files = 'Categories/UIKits/UIImage/*.h'
  end

  s.subspec 'UITextView' do |ss|
     ss.source_files = 'Categories/UIKits/UITextView/*.{h,m}'
     ss.public_header_files = 'Categories/UIKits/UITextView/*.h'
  end

  s.subspec 'UIView' do |ss|
     ss.source_files = 'Categories/UIKits/UIView/*.{h,m}'
     ss.public_header_files = 'Categories/UIKits/UIView/*.h'
  end

  s.subspec 'UIViewController' do |ss|
     ss.source_files = 'Categories/UIKits/UIViewController/*.{h,m}'
     ss.public_header_files = 'Categories/UIKits/UIViewController/*.h'
  end
end

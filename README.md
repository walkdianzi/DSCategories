# DSCategories

参考自[iOS-Categories](https://github.com/shaojiankui/iOS-Categories)的整理

有一些自己项目中需要的Category的修改及整理。基本上一个项目都会用到的category。

##Foundation

- NSString+Size  

 > 得到字符串的高度和宽度

- NSString+Attribute
 
 > 得到有行间距的NSAttributedString

- NSString+Code.h

 > 字符串EnCode和DeCode

- NSString+MD5.h

 > 字符串MD5加密

- NSArray+SafeAccess（修改某些返回值为默认值而不返回nil，如返回@"",0等）
- NSDictionary+SafeAccess（修改某些返回值为默认值而不返回nil，如返回@"",0等）
- NSUserDefaults+SafeAccess

##UIKits

- UITextView+Placeholder (加入Placeholder)
- UIButton+Frame (可以调节UIButton上图片和文字的位置)
- UIButton+BackgroundColor （根据不同状态给UIButton添加不同颜色）
- UIView+Frame (设置UIView的位置)
- UIView+Operation (移除所有的subViews，得到当前屏幕的截图)
- UIView+Toast （文字提示，或者加载提示）
- UIColor+RCColor （十六进制string转UIColor， UIColor转UIImage）
- NSData+MD5 （NSData的MD5加密）
- UIViewController+LifeCycle (UIViewController生命周期函数的替换)
- UIImage+Compress.h (图片压缩)

## Podfile

To integrate DSCategories into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/walkdianzi/DSSpecs.git'
platform :ios, '7.0'

target :zhefengle do

pod 'DSCategories', '~> 0.0.7'

end
```

Then, run the following command:

```bash
$ pod install
```

##版本更新

 **0.1.1**

 UIImage+Compress.h

 NSString+Code.h

 NSString+MD5.h

 **0.0.10**

 加入UIColor+RCColor.h

 加入NSData+MD5.h

 加入UIViewController+LifeCycle
 
 加入UIButton+BackgroundColor

 **0.0.8**

 UIView+Toast bug修改 

 **0.0.7**

 UIView+common改名UIView+operation
 
 加入NSString+Attribute

 加入UIView+Toast

 UIView+Frame 增加相对位置功能

 NSDictionary+SafeAccess加上ds_前缀
 
 **0.0.6**
 
 拆分UIView+frame
 
 加入UIView+common（移除所有的subViews，得到当前屏幕的截图）
 
 **0.0.5**

 加入UIView+frame

 **0.0.4**

 加入NSUserDefaults

 **0.0.3**
 
 加入UIButton+frame

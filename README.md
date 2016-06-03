# DSCategories

参考自[iOS-Categories](https://github.com/shaojiankui/iOS-Categories)的整理

有一些自己项目中需要的Category的修改及整理。基本上一个项目都会用到的category。

##Foundation

- NSString+Size  

> 得到字符串的高度和宽度

- NSString+Attribute
 
> 得到有行间距的NSAttributedString

- NSArray+SafeAccess（修改某些返回值为默认值而不返回nil，如返回@"",0等）
- NSDictionary+SafeAccess（修改某些返回值为默认值而不返回nil，如返回@"",0等）
- NSUserDefaults+SafeAccess

##UIKits

- UITextView+Placeholder (加入Placeholder)
- UIButton+Frame (可以调节UIButton上图片和文字的位置)
- UIView+Frame (设置UIView的位置)
- UIView+Operation (移除所有的subViews，得到当前屏幕的截图)

## Podfile

To integrate DSCategories into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/walkdianzi/DSSpecs.git'
platform :ios, '7.0'

target :zhefengle do

pod 'DSCategories', '~> 0.0.4'

end
```

Then, run the following command:

```bash
$ pod install
```

##版本更新

 **0.0.7**

 UIView+common改名UIView+operation
 加入NSString+Attribute

 **0.0.6**
 
 拆分UIView+frame
 
 加入UIView+common（移除所有的subViews，得到当前屏幕的截图）
 
 **0.0.5**

 加入UIView+frame

 **0.0.4**

 加入NSUserDefaults

 **0.0.3**
 
 加入UIButton+frame

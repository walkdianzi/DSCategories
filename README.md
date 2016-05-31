# DSCategories

参考自[iOS-Categories](https://github.com/shaojiankui/iOS-Categories)的整理

有一些自己项目中需要的Category的修改及整理

##Foundation

- NSString+Size（修改了可以根据设置行间距和字体来计算文本高度，加入了得到有行间距的NSAttributedString）
- NSArray+SafeAccess（修改某些返回值为默认值而不返回nil，如返回@"",0等）
- NSDictionary+SafeAccess（修改某些返回值为默认值而不返回nil，如返回@"",0等）

##UIKits

- UITextView+Placeholder (加入Placeholder)
- UIButton+frame (可以调节UIButton上图片和文字的位置)

## Podfile

To integrate DSCategories into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
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

 **0.0.4**

 加入NSUserDefaults

 **0.0.3**
 
 加入UIButton+frame

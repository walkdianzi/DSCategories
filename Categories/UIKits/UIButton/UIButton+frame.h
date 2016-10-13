//
//  UIButton+frame.h
//  DSCategories
//
//  Created by dasheng on 16/5/30.
//  Copyright © 2016年 dasheng. All rights reserved.
//

/* TODO
在iphone4这样的机器上会有问题，主要就是拿button的frame时候由于机器慢设置了frame，
但取的时候frame还没有值，然后马上根据frame来设置EdgeInsets会有问题。如果需要支持
这样低配的手机可以在调用一下方法的时候延时个0.1秒执行。
*/

#import <UIKit/UIKit.h>

@interface UIButton (frame)

//设置图片离左边的距离，文字还在原来的位置
-(float)imageLeft;
-(void)setImageLeft:(float)imageLeft;

//设置文字离左边的距离，图片还在原来的位置
-(float)titleLeft;
-(void)setTitleLeft:(float)titleLeft;


//设置图片在文字右边
-(void)setImageToTitleRight;
-(void)setImageToTitleRightWithPadding:(CGFloat)padding;

//图片在文字的左边
-(void)setImageAndTitleWithPadding:(CGFloat)padding;

//设置图片和文字都居中，图片在上，padding为图片跟文字的间距
-(void)setImageAndTitleCenterImageTopWithpadding:(float)padding;

@end

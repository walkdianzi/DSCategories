//
//  UIButton+frame.h
//  DSCategories
//
//  Created by dasheng on 16/5/30.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (frame)

//设置图片离左边的距离
-(float)imageLeft;
-(void)setImageLeft:(float)imageLeft;

//设置文字离左边的距离
-(float)titleLeft;
-(void)setTitleLeft:(float)titleLeft;

//设置文字居中
-(float)titleCenter;
-(void)setTitleCenter;

//设置图片在文字右边
-(void)setimageToTitleRight;
-(void)setimageToTitleRightWithPadding:(CGFloat)padding;
-(void)setimageToTitleRightWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay;

//图片在文字的左边
-(void)setImageAndTitleWithPadding:(CGFloat)padding;
-(void)setImageAndTitleWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay;


//设置图片和文字都居中，图片在上,padding为图片跟文字的间距
-(void)setImageAndTitleCenterImageTopWithpadding:(float)padding;

//设置图片和文字都居中，文字在上,padding为图片跟文字的间距 //TODO: 待测试，好像有问题
-(void)setImageAndTitleCenterTitleTopWithpadding:(float)padding;

@end

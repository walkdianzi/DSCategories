//
//  UIView+frame.h
//  TalkThings
//
//  Created by ZQD on 14-9-9.
//  Copyright (c) 2014年 Sillon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

- (CGFloat)kleft;
- (void)setKleft:(CGFloat)x;
- (CGFloat)ktop;
- (void)setKtop:(CGFloat)y;
- (CGFloat)kright;
- (void)setKright:(CGFloat)right;
- (CGFloat)kbottom;
- (void)setKbottom:(CGFloat)bottom;
- (CGFloat)kcenterX;
- (void)setKcenterX:(CGFloat)centerX;
- (CGFloat)kcenterY;
- (void)setKcenterY:(CGFloat)centerY;
- (CGFloat)kwidth;
- (void)setKwidth:(CGFloat)width;
- (CGFloat)kheight;
- (void)setKheight:(CGFloat)height;
- (CGPoint)korigin;
- (void)setKorigin:(CGPoint)origin;
- (CGSize)ksize;
- (void)setKsize:(CGSize)size;


- (void)heightEqualToView:(UIView *)view;
- (void)widthEqualToView:(UIView *)view;
- (void)centerXEqualToView:(UIView *)view;
- (void)centerYEqualToView:(UIView *)view;
- (void)centerEqualToView:(UIView *)view;
- (void)topEqualToView:(UIView *)view;
- (void)bottomEqualToView:(UIView *)view;
- (void)leftEqualToView:(UIView *)view;
- (void)rightEqualToView:(UIView *)view;
- (void)sizeEqualToView:(UIView *)view;


- (void)fromTheTop:(CGFloat)distance ofView:(UIView *)view;
- (void)fromTheBottom:(CGFloat)distance ofView:(UIView *)view;
- (void)fromTheLeft:(CGFloat)distance ofView:(UIView *)view;
- (void)fromTheRight:(CGFloat)distance ofView:(UIView *)view;
@end

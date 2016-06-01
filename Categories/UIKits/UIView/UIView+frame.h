//
//  UIView+frame.h
//  TalkThings
//
//  Created by ZQD on 14-9-9.
//  Copyright (c) 2014年 Sillon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (frame)

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

@end

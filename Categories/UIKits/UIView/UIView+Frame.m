//
//  UIView+frame.m
//  TalkThings
//
//  Created by ZQD on 14-9-9.
//  Copyright (c) 2014年 Sillon. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGFloat)kleft {
    return self.frame.origin.x;
}

- (void)setKleft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = ceilf(x);
    self.frame = frame;
}

- (CGFloat)ktop {
    return self.frame.origin.y;
}

- (void)setKtop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)kright {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setKright:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = ceilf(right - frame.size.width);
    self.frame = frame;
}

- (CGFloat)kbottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setKbottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)kcenterX {
    return self.center.x;
}

- (void)setKcenterX:(CGFloat)centerX {
    self.center = CGPointMake(ceilf(centerX), self.center.y);
}

- (CGFloat)kcenterY {
    return self.center.y;
}

- (void)setKcenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, ceilf(centerY));
}

- (CGFloat)kwidth {
    return self.frame.size.width;
}

- (void)setKwidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = ceilf(width);
    self.frame = frame;
}

- (CGFloat)kheight {
    return self.frame.size.height;
}

- (void)setKheight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = ceilf(height);
    self.frame = frame;
}

- (CGPoint)korigin {
    return self.frame.origin;
}

- (void)setKorigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)ksize {
    return self.frame.size;
}

- (void)setKsize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}


//--------------相对位置---------------

- (void)heightEqualToView:(UIView *)view{
    
    self.kheight = view.kheight;
}

- (void)widthEqualToView:(UIView *)view{
    
    self.kwidth = view.kwidth;
}

- (void)centerXEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewCenterPoint = [superView convertPoint:view.center toView:self.topSuperView];
    CGPoint centerPoint = [self.topSuperView convertPoint:viewCenterPoint toView:self.superview];
    self.kcenterX = centerPoint.x;
}

- (void)centerYEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewCenterPoint = [superView convertPoint:view.center toView:self.topSuperView];
    CGPoint centerPoint = [self.topSuperView convertPoint:viewCenterPoint toView:self.superview];
    self.kcenterY = centerPoint.y;
}

- (void)centerEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewCenterPoint = [superView convertPoint:view.center toView:self.topSuperView];
    CGPoint centerPoint = [self.topSuperView convertPoint:viewCenterPoint toView:self.superview];
    self.kcenterX = centerPoint.x;
    self.kcenterY = centerPoint.y;
}

- (void)topEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.ktop = newOrigin.y;
}

- (void)bottomEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.ktop = newOrigin.y + view.kheight - self.kheight;
}

- (void)leftEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.kleft = newOrigin.x;
}

- (void)rightEqualToView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.kleft = newOrigin.x + view.kwidth - self.kwidth;
}

- (void)sizeEqualToView:(UIView *)view{
    
    self.frame = CGRectMake(self.kleft, self.ktop, view.kwidth, view.kheight);
}


- (void)fromTheTop:(CGFloat)distance ofView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.ktop = floorf(newOrigin.y + distance + view.kheight);
}

- (void)fromTheBottom:(CGFloat)distance ofView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.ktop = newOrigin.y - distance - self.kheight;
}

- (void)fromTheLeft:(CGFloat)distance ofView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.kleft = newOrigin.x - distance - self.kwidth;
}

- (void)fromTheRight:(CGFloat)distance ofView:(UIView *)view{
    
    UIView *superView = view.superview ? view.superview : view;
    CGPoint viewOrigin = [superView convertPoint:view.korigin toView:self.topSuperView];
    CGPoint newOrigin = [self.topSuperView convertPoint:viewOrigin toView:self.superview];
    
    self.kleft = newOrigin.x + distance + view.kwidth;
}

- (UIView *)topSuperView{
    
    UIView *topSuperView = self.superview;
    
    if (topSuperView == nil) {
        topSuperView = self;
    } else {
        while (topSuperView.superview) {
            topSuperView = topSuperView.superview;
        }
    }
    
    return topSuperView;
}

@end

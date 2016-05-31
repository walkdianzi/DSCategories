//
//  UIView+frame.m
//  TalkThings
//
//  Created by ZQD on 14-9-9.
//  Copyright (c) 2014年 Sillon. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

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

- (void)removeAllSubviews {
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
}
- (UIImage *)screenshot {
    UIGraphicsBeginImageContext(self.bounds.size);
    if([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]){
        [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    }else{
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    }
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *imageData = UIImageJPEGRepresentation(image, 0.75);
    image = [UIImage imageWithData:imageData];
    return image;
}
@end

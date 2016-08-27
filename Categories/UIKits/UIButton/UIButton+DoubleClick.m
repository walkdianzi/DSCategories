//
//  UIButton+DoubleClick.m
//  DSCategories
//
//  Created by 童玉龙 on 16/8/27.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UIButton+DoubleClick.h"
#import <objc/runtime.h>

// 默认的按钮点击时间
static const NSTimeInterval defaultDuration = 0.5f;

@implementation UIButton (DoubleClick)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(sendAction:to:forEvent:);
        SEL swizzledSelector = @selector(ds_sendAction:to:forEvent:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL success = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        
        if (success) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}


- (void)ds_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    
    self.ds_acceptEventInterval = self.ds_acceptEventInterval == 0 ? defaultDuration : self.ds_acceptEventInterval;
    
    
    if (NSDate.date.timeIntervalSince1970 - self.ds_acceptedEventTime < self.ds_acceptEventInterval) return;
    
    if (self.ds_acceptEventInterval > 0)
    {
        self.ds_acceptedEventTime = NSDate.date.timeIntervalSince1970;
    }
    
    [self ds_sendAction:action to:target forEvent:event];
}


//时间间隔
static const char *UIControl_acceptEventInterval = "UIControl_acceptEventInterval";
- (NSTimeInterval)ds_acceptEventInterval
{
    return [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
}

- (void)setDs_acceptEventInterval:(NSTimeInterval)ds_acceptEventInterval
{
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(ds_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


//记录上次点击的时间
static const char *UIControl_acceptEventTime = "UIControl_acceptEventTime";
- (NSTimeInterval)ds_acceptedEventTime
{
    return [objc_getAssociatedObject(self, UIControl_acceptEventTime) doubleValue];
}

- (void)setDs_acceptedEventTime:(NSTimeInterval)ds_acceptedEventTime
{
    objc_setAssociatedObject(self, UIControl_acceptEventTime, @(ds_acceptedEventTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

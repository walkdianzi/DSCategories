//
//  UIViewController+LifeCycle.m
//  DSCategories
//
//  Created by dasheng on 16/7/1.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UIViewController+LifeCycle.h"
#import <objc/runtime.h>
@implementation UIViewController (LifeCycle)

#pragma mark - swizzle
+ (void)load
{
    Method method1 = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
    Method method2 = class_getInstanceMethod([self class], @selector(deallocSwizzle));
    method_exchangeImplementations(method1, method2);
}

- (void)deallocSwizzle
{
    NSLog(@"%@被销毁了", self);
    [self deallocSwizzle];
}

static char MethodKey;
- (void)setMethod:(NSString *)method
{
    objc_setAssociatedObject(self, &MethodKey, method, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)method
{
    return objc_getAssociatedObject(self, &MethodKey);
}

@end

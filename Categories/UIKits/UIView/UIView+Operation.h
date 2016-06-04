//
//  UIView+common.h
//  DSCategories
//
//  Created by dasheng on 16/5/31.
//  Copyright © 2016年 dasheng. All rights reserved.
//
// 对UIView进行一些操作


#import <UIKit/UIKit.h>

@interface UIView (Operation)

/**
 *  移除所有的subViews
 */
- (void)removeAllSubviews;

/**
 *  得到当前屏幕的截图
 *
 *  @return 当前屏幕截图的image
 */
- (UIImage *)screenshot;

@end

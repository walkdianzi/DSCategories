//
//  NSString+Size.h
//  DSCategories
//
//  Created by dasheng on 15/12/17.
//  Copyright © 2015年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Size)

/**
 *  @brief 计算文字的高度
 *
 *  @param font  字体(默认为系统字体)
 *  @param width 约束宽度
 */
- (CGFloat)heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width;

/**
 *  @brief 计算文字的高度
 *
 *  @param font  字体(默认为系统字体)
 *  @param lineSpace  行间距
 *  @param width 约束宽度
 */
- (CGFloat)heightWithFont:(UIFont *)font LineSpacing:(CGFloat)lineSpace constrainedToWidth:(CGFloat)width;


/**
 *  @brief 计算文字的宽度（只能计算一行的宽度）
 *
 *  @param font   字体(默认为系统字体)
 */
- (CGFloat)widthWithFont:(UIFont *)font;

@end

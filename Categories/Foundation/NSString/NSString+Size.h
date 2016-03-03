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
 *  得到AttributedString
 *
 *  @param font      字体(默认为系统字体)
 *
 *  @return AttributedString
 */
-(NSAttributedString *)attributedStringWithFont:(UIFont *)font;

/**
 *  得到AttributedString
 *
 *  @param font      字体(默认为系统字体)
 *  @param lineSpace 行间距
 *
 *  @return AttributedString
 */
-(NSAttributedString *)attributedStringWithFont:(UIFont *)font LineSpacing:(CGFloat)lineSpace;


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
 *  @param height 约束高度
 */
- (CGFloat)widthWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height;


/*
 如果option为NSStringDrawingUsesLineFragmentOrigin，表示要分行。
 如果size的width足够大，计算出来是string一行的宽高度。
 如果width不是足够大，计算出来string就是width的宽度，高度就是所需的高度（跟size的height无关了）。
 (备注如果width、height为0，表示无限大)
 */
@end

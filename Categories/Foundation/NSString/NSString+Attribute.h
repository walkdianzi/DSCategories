//
//  NSString+Attribute.h
//  DSCategories
//
//  Created by dasheng on 16/6/3.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Attribute)

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

@end

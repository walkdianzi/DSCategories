//
//  NSString+Attribute.m
//  DSCategories
//
//  Created by dasheng on 16/6/3.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "NSString+Attribute.h"

@implementation NSString (Attribute)

- (NSAttributedString *)attributedStringWithFont:(UIFont *)font{
    
    return [self attributedStringWithFont:font LineSpacing:0];
}

-(NSAttributedString *)attributedStringWithFont:(UIFont *)font LineSpacing:(CGFloat)lineSpace{
    
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self length])];
    [attributedString addAttribute:NSFontAttributeName value:textFont range:NSMakeRange(0, [self length])];
    return attributedString;
}

@end

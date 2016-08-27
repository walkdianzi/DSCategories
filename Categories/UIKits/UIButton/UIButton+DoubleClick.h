//
//  UIButton+DoubleClick.h
//  DSCategories
//
//  Created by 童玉龙 on 16/8/27.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DoubleClick)

/**
 *  设置不可点击的时间间隔
 */
@property (nonatomic, assign) NSTimeInterval ds_acceptEventInterval;

@end

//
//  NSStringDemoViewController.m
//  DSCategories
//
//  Created by dasheng on 15/12/17.
//  Copyright © 2015年 dasheng. All rights reserved.
//

#import "NSStringViewController.h"
#import "NSString+Size.h"
#import "NSString+Attribute.h"

@interface NSStringViewController(){
    
    UILabel     *_heightLabel;
    UILabel     *_widthLabel;
}

@end

@implementation NSStringViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    UIButton *heightButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 74, 100, 40)];
    [heightButton setTitle:@"高度" forState:UIControlStateNormal];
    [heightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [heightButton addTarget:self action:@selector(heightButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:heightButton];
    
    UIButton *widthButton = [[UIButton alloc] initWithFrame:CGRectMake(120, 74, 100, 40)];
    [widthButton setTitle:@"宽度" forState:UIControlStateNormal];
    [widthButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [widthButton addTarget:self action:@selector(widthButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:widthButton];
    
    
    //计算高度
    NSString *_textDetail = @"首次邀请成功获得￥20优惠券，依次累加，优惠券面额最高可累加至￥500。\n继续邀请，仍可获得相应面额优惠券，数量无上限哦！";
    
    _heightLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _heightLabel.textColor = [UIColor blackColor];
    _heightLabel.attributedText = [_textDetail attributedStringWithFont:[UIFont systemFontOfSize:20] LineSpacing:10];
    _heightLabel.numberOfLines = 0;
    
    CGFloat detailHeight = [_textDetail heightWithFont:[UIFont systemFontOfSize:20] LineSpacing:10 constrainedToWidth:200];
    CGRect frame1;
    frame1.size.height = detailHeight;
    frame1.size.width = 200;
    frame1.origin.x = 10;
    frame1.origin.y = 220;
    _heightLabel.frame = frame1;
    [self.view addSubview:_heightLabel];
    [_heightLabel setHidden:YES];
    
    
    //计算宽度
    NSString *_textDetail2 = @"首次邀请成功获得地对地导弹";
    
    _widthLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _widthLabel.textColor = [UIColor blackColor];
    _widthLabel.attributedText = [_textDetail2 attributedStringWithFont:[UIFont systemFontOfSize:20] LineSpacing:10];
    
    CGFloat detailWidth = [_textDetail2 widthWithFont:[UIFont systemFontOfSize:20]];
    CGRect frame2;
    frame2.size.width = detailWidth;
    frame2.size.height = 20;
    frame2.origin.x = 10;
    frame2.origin.y = 220;
    _widthLabel.frame = frame2;
    [self.view addSubview:_widthLabel];
    [_widthLabel setHidden:YES];
}

- (void)heightButtonClick{
    
    [_heightLabel setHidden:NO];
    [_widthLabel setHidden:YES];
}

- (void)widthButtonClick{
    
    [_heightLabel setHidden:YES];
    [_widthLabel setHidden:NO];
}

@end

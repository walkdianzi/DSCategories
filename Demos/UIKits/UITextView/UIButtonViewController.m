//
//  UIButtonViewController.m
//  DSCategories
//
//  Created by dasheng on 16/6/27.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UIButtonViewController.h"
#import "UIButton+frame.h"


@implementation UIButtonViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    /*--------------图片在上，文字在下，居中显示-----------------*/
    
    //UIControlContentHorizontalAlignmentCenter
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 57, 87)];
    button1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [button1 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button1 setTitle:@"照相" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:14];
    [button1 setImageAndTitleCenterImageTopWithpadding:3];
    [self.view addSubview:button1];
    
    
    //UIControlContentHorizontalAlignmentLeft
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(120, 150, 57, 87)];
    button2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [button2 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button2 setTitle:@"照相" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button2.titleLabel.font = [UIFont systemFontOfSize:14];
    [button2 setImageAndTitleCenterImageTopWithpadding:3];
    [self.view addSubview:button2];
    
    //UIControlContentHorizontalAlignmentRight
    UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(190, 150, 57, 87)];
    button3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [button3 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button3 setTitle:@"照相" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button3.titleLabel.font = [UIFont systemFontOfSize:14];
    [button3 setImageAndTitleCenterImageTopWithpadding:3];
    [self.view addSubview:button3];
}

@end

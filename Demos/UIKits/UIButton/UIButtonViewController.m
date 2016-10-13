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
    
    /*--------------图片在左文字左边-----------------*/
    
    //UIControlContentHorizontalAlignmentCenter
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(30, 150, 100, 57)];
    button1.backgroundColor = [UIColor blackColor];
    button1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [button1 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button1 setTitle:@"照相" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:14];
    [button1 setImageAndTitleWithPadding:5];
    [self.view addSubview:button1];
    
    
    //UIControlContentHorizontalAlignmentLeft
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(140, 150, 100, 57)];
    button2.backgroundColor = [UIColor blackColor];
    button2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [button2 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button2 setTitle:@"照相" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button2.titleLabel.font = [UIFont systemFontOfSize:14];
    [button2 setImageAndTitleWithPadding:5];
    [self.view addSubview:button2];
    
    //UIControlContentHorizontalAlignmentRight
    UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(250, 150, 100, 57)];
    button3.backgroundColor = [UIColor blackColor];
    button3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [button3 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button3 setTitle:@"照相" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button3.titleLabel.font = [UIFont systemFontOfSize:14];
    [button3 setImageAndTitleWithPadding:5];
    [self.view addSubview:button3];

    
    /*--------------图片在上，文字在下，居中显示-----------------*/
    
    //UIControlContentHorizontalAlignmentCenter
    UIButton *button4 = [[UIButton alloc] initWithFrame:CGRectMake(50, 250, 57, 87)];
    button4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [button4 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button4 setTitle:@"照相" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button4.titleLabel.font = [UIFont systemFontOfSize:14];
    [button4 setImageAndTitleCenterImageTopWithpadding:3];
    [self.view addSubview:button4];
    
    
    //UIControlContentHorizontalAlignmentLeft
    UIButton *button5 = [[UIButton alloc] initWithFrame:CGRectMake(120, 250, 57, 87)];
    button5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [button5 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button5 setTitle:@"照相" forState:UIControlStateNormal];
    [button5 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button5.titleLabel.font = [UIFont systemFontOfSize:14];
    [button5 setImageAndTitleCenterImageTopWithpadding:3];
    [self.view addSubview:button5];
    
    //UIControlContentHorizontalAlignmentRight
    UIButton *button6 = [[UIButton alloc] initWithFrame:CGRectMake(190, 250, 57, 87)];
    button6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [button6 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button6 setTitle:@"照相" forState:UIControlStateNormal];
    [button6 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button6.titleLabel.font = [UIFont systemFontOfSize:14];
    [button6 setImageAndTitleCenterImageTopWithpadding:3];
    [self.view addSubview:button6];
    
    
    /*--------------图片在文字右边-----------------*/
    
    //UIControlContentHorizontalAlignmentCenter
    UIButton *button7 = [[UIButton alloc] initWithFrame:CGRectMake(30, 350, 100, 57)];
    button7.backgroundColor = [UIColor blackColor];
    button7.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [button7 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button7 setTitle:@"照相" forState:UIControlStateNormal];
    [button7 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button7.titleLabel.font = [UIFont systemFontOfSize:14];
    [button7 setImageToTitleRightWithPadding:5];
    [self.view addSubview:button7];
    
    
    //UIControlContentHorizontalAlignmentLeft
    UIButton *button8 = [[UIButton alloc] initWithFrame:CGRectMake(140, 350, 100, 57)];
    button8.backgroundColor = [UIColor blackColor];
    button8.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [button8 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button8 setTitle:@"照相" forState:UIControlStateNormal];
    [button8 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button8.titleLabel.font = [UIFont systemFontOfSize:14];
    [button8 setImageToTitleRightWithPadding:5];
    [self.view addSubview:button8];
    
    //UIControlContentHorizontalAlignmentRight
    UIButton *button9 = [[UIButton alloc] initWithFrame:CGRectMake(250, 350, 100, 57)];
    button9.backgroundColor = [UIColor blackColor];
    button9.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [button9 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button9 setTitle:@"照相" forState:UIControlStateNormal];
    [button9 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button9.titleLabel.font = [UIFont systemFontOfSize:14];
    [button9 setImageToTitleRightWithPadding:5];
    [self.view addSubview:button9];
    
    
    /*--------------设置文字离左边的距离-----------------*/
    //UIControlContentHorizontalAlignmentRight
    UIButton *button10 = [[UIButton alloc] initWithFrame:CGRectMake(30, 450, 100, 57)];
    button10.backgroundColor = [UIColor blackColor];
    button10.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [button10 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button10 setTitle:@"照相" forState:UIControlStateNormal];
    [button10 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button10.titleLabel.font = [UIFont systemFontOfSize:14];
    [button10 setTitleLeft:5];
    [self.view addSubview:button10];
    
    
    /*--------------设置图片离左边的距离-----------------*/
    //UIControlContentHorizontalAlignmentRight
    UIButton *button11 = [[UIButton alloc] initWithFrame:CGRectMake(140, 450, 100, 57)];
    button11.backgroundColor = [UIColor blackColor];
    button11.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [button11 setImage:[UIImage imageNamed:@"camera"] forState:UIControlStateNormal];
    [button11 setTitle:@"照相" forState:UIControlStateNormal];
    [button11 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button11.titleLabel.font = [UIFont systemFontOfSize:14];
    [button11 setImageLeft:5];
    [self.view addSubview:button11];
}

@end

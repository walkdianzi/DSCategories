//
//  UITextViewViewController.m
//  DSCategories
//
//  Created by dasheng on 16/2/2.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UITextViewViewController.h"
#import "UITextView+PlaceHolder.h"
#import "UIView+Toast.h"

@implementation UITextViewViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    UITextView  *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 100, 350, 350)];
    textView.font = [UIFont systemFontOfSize:25];
    textView.backgroundColor = [UIColor grayColor];
    textView.placeholder = @"placeholder在此";
    textView.placeholderColor = [UIColor redColor];
    
    [textView setTextContainerInset:UIEdgeInsetsMake(20, 20, 0, 0)];
    textView.textContainer.maximumNumberOfLines = 0;
    [self.view addSubview:textView];
}

@end

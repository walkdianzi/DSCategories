//
//  UIViewViewController.m
//  DSCategories
//
//  Created by dasheng on 16/7/1.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UIViewViewController.h"
#import "UIView+Toast.h"

@implementation UIViewViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self.view makeToastAnimationImage];
}
@end

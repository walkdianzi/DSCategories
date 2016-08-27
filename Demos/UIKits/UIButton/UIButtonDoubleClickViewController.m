//
//  UIButtonDoubleClickViewController.m
//  DSCategories
//
//  Created by 童玉龙 on 16/8/27.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "UIButtonDoubleClickViewController.h"
#import "UIButton+DoubleClick.h"

@interface UIButtonDoubleClickViewController ()

@end

@implementation UIButtonDoubleClickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *doubleClickBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 60)];
    [doubleClickBtn setTitle:@"多次点击" forState:UIControlStateNormal];
    [doubleClickBtn addTarget:self action:@selector(doubleClick) forControlEvents:UIControlEventTouchUpInside];
    doubleClickBtn.backgroundColor = [UIColor redColor];
    doubleClickBtn.ds_acceptEventInterval = 3;
    [self.view addSubview:doubleClickBtn];
}

- (void)doubleClick{
    
    NSLog(@"点击我了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

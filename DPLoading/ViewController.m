//
//  ViewController.m
//  DPLoading
//
//  Created by developeng on 2018/6/5.
//  Copyright © 2018年 developeng. All rights reserved.
//

#import "ViewController.h"
#import "DPHUD/DPHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"MBProgressHUD二次封装加载动画" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 100, self.view.frame.size.width, 100);
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick{
    [DPHUD showAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

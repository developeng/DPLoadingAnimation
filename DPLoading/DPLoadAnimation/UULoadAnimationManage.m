//
//  UULoadAnimationManage.m
//  UUBaoKu
//
//  Created by developeng on 2018/6/4.
//  Copyright © 2018年 loongcrown. All rights reserved.
//

#import "UULoadAnimationManage.h"

/***  当前屏幕宽度 */
#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
/***  当前屏幕高度 */
#define kScreenHeight  [[UIScreen mainScreen] bounds].size.height

@implementation UULoadAnimationManage

+ (instancetype)shareLoadAnimationManage{
    static UULoadAnimationManage *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[UULoadAnimationManage alloc] init];
    });
    return instance;
}

-  (void)showLoadAnimationViewInView:(UIView *)view{
    view.userInteractionEnabled = NO;

    self.backView = [[UIView alloc] initWithFrame:CGRectMake((kScreenWidth-124)/2, (kScreenHeight-98)/2, 124, 98)];
    self.backView.layer.cornerRadius = 20;
    self.backView.layer.masksToBounds = YES;
    self.backView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
    [view addSubview:self.backView];
    
    self.loadingView = [[UULoadingView alloc] initWithFrame:CGRectMake(38, 15,48,48)];
    self.loadingView.trackBackgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self.backView addSubview:self.loadingView];
    
    self.loadLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.loadingView.frame), 124, 98-CGRectGetMaxY(self.loadingView.frame))];
    self.loadLabel.text = @"加载中...";
    self.loadLabel.textColor = [UIColor whiteColor];
    self.loadLabel.font = [UIFont systemFontOfSize:15];
    self.loadLabel.textAlignment = NSTextAlignmentCenter;
    [self.loadLabel setShadowColor:[UIColor blackColor]];
    self.loadLabel.shadowOffset = CGSizeMake(1,1);
    [self.backView addSubview:self.loadLabel];
}

//删除加载动画
- (void)hideLoadAnimationViewInView:(UIView *)view{
    view.userInteractionEnabled = YES;
    [self.backView removeFromSuperview];
}

@end

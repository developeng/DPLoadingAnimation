//
//  UULoadAnimationManage.h
//  UUBaoKu
//
//  Created by developeng on 2018/6/4.
//  Copyright © 2018年 loongcrown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UULoadingView.h"
@interface UULoadAnimationManage : NSObject

@property (nonatomic, strong) UIView *backView;
@property (nonatomic, strong) UULoadingView *loadingView;
@property (nonatomic, strong) UILabel *loadLabel;


+ (instancetype)shareLoadAnimationManage;

//显示加载动画
- (void)showLoadAnimationViewInView:(UIView *)view;

//删除加载动画
- (void)hideLoadAnimationViewInView:(UIView *)view;

@end

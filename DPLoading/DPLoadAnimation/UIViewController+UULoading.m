//
//  UIViewController+UULoading.m
//  UUBaoKu
//
//  Created by developeng on 2018/6/5.
//  Copyright © 2018年 loongcrown. All rights reserved.
//

#import "UIViewController+UULoading.h"
#import "UULoadAnimationManage.h"
@implementation UIViewController (UULoading)

- (void)showLoadAnimationInView:(UIView *)view{
    [[UULoadAnimationManage shareLoadAnimationManage] showLoadAnimationViewInView:view];
}

- (void)hideLoadAnimation{
     [[UULoadAnimationManage shareLoadAnimationManage] hideLoadAnimationViewInView:self.view];
}

@end

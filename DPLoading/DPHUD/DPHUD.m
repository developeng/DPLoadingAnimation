//
//  DPHUD.m
//  DPLoading
//
//  Created by developeng on 2018/12/10.
//  Copyright © 2018 developeng. All rights reserved.
//

#import "DPHUD.h"

@interface DPHUD()<MBProgressHUDDelegate>
@end

@implementation DPHUD

+ (MBProgressHUD *)showCustomHudInView:(UIView *)view{
    if (view == nil) {
        view  = (UIView *)[[UIApplication sharedApplication].delegate window];
    }
    NSMutableArray *imageArr = [NSMutableArray array];
    for (int i = 1; i<= 24; i++) {
        [imageArr addObject:[UIImage imageNamed:[NSString stringWithFormat:@"img_loading_bee%d",i]]];
    }
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeCustomView;
    UIImageView *imaegCustomView = [[UIImageView alloc] init];
    imaegCustomView.animationImages = imageArr;
    [imaegCustomView setAnimationRepeatCount:0];
    [imaegCustomView setAnimationDuration:(imageArr.count + 1) * 0.075];
    [imaegCustomView startAnimating];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.color = [UIColor clearColor];
    hud.customView = imaegCustomView;
    hud.square = NO;
    return hud;
}


+ (void)showAnimation{
    [self hideAnimation];
    [DPHUD showCustomHudInView:[self window]];
}

+ (void)hideAnimation{
    [MBProgressHUD hideHUDForView:[self window] animated:YES];
}

+ (UIWindow *)window {
    return [[UIApplication sharedApplication].delegate window];
}

@end

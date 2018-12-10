//
//  DPHUD.h
//  DPLoading
//
//  Created by developeng on 2018/12/10.
//  Copyright © 2018 developeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"
NS_ASSUME_NONNULL_BEGIN

@interface DPHUD : NSObject

+ (MBProgressHUD *)showCustomHudInView:(UIView *)view;

+ (void)showAnimation;
+ (void)hideAnimation;

@end

NS_ASSUME_NONNULL_END

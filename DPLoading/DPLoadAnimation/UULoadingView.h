//
//  UULoadingView.h
//  UUBaoKu
//
//  Created by developeng on 2018/6/4.
//  Copyright © 2018年 loongcrown. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UULoadingView : UIView

/** 开始的角度 默认为 -90°*/
@property (assign, nonatomic) CGFloat beginAngle;
/** 进度条的宽度 默认为10 */
@property (assign, nonatomic) CGFloat lineWidth;
/** 进度条的背景颜色 默认为 clearColor */
@property (strong, nonatomic) UIColor *trackBackgroundColor;
/** 进度条的颜色 默认为 redColor */
@property (strong, nonatomic) UIColor *trackColor;
/** 进度条两端的样式 默认为kCALineCapRound*/
@property (assign, nonatomic) NSString *lineCap;
/** 动画时间 默认为2s*/
@property (assign, nonatomic) CGFloat animateDuration;
/**
 *  停止动画
 */
- (void)stopAnimations;
/**
 *  重新开始动画
 */
- (void)startAnimations;

@end

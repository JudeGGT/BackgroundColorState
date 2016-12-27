//
//  UIButton+BackgroundColor.h
//  ButtonSetBackGroundColorState
//
//  Created by ggt on 2016/12/27.
//  Copyright © 2016年 GGT. All rights reserved.
//

#import <UIKit/UIKit.h>

/// 根据状态设置UIButton的背景颜色
@interface UIButton (BackgroundColor)


/**
 设置背景颜色
 
 @param backgroundColor 颜色
 @param state 按钮状态
 */
- (void)gp_setBackgroundColor:(UIColor *)backgroundColor state:(UIControlState)state;

@end

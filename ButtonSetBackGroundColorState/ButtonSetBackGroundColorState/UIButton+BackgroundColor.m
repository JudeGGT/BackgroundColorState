//
//  UIButton+BackgroundColor.m
//  ButtonSetBackGroundColorState
//
//  Created by ggt on 2016/12/27.
//  Copyright © 2016年 GGT. All rights reserved.
//

#import "UIButton+BackgroundColor.h"

@implementation UIButton (BackgroundColor)


/**
 设置背景颜色

 @param backgroundColor 颜色
 @param state 按钮状态
 */
- (void)gp_setBackgroundColor:(UIColor *)backgroundColor state:(UIControlState)state {
    
    [self setBackgroundImage:[UIButton imageWithColor:backgroundColor] forState:state];
}


/**
 通过颜色生成Image

 @param color 颜色
 @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end

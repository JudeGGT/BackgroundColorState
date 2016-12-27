//
//  ViewController.m
//  ButtonSetBackGroundColorState
//
//  Created by ggt on 2016/12/27.
//  Copyright © 2016年 GGT. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+BackgroundColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.layer.cornerRadius = 5.0f;
    button.layer.masksToBounds = YES;
    [button gp_setBackgroundColor:[UIColor blueColor] state:UIControlStateNormal];
    [button gp_setBackgroundColor:[UIColor orangeColor] state:UIControlStateHighlighted];
    [self.view addSubview:button];
}


@end

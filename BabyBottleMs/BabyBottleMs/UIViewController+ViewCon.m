//
//  UIViewController+ViewCon.m
//  BabyBottleMs
//
//  Created by Ms on 15/12/22.
//  Copyright © 2015年 NaiBaNaiMa. All rights reserved.
//

#import "UIViewController+ViewCon.h"

@implementation ViewCon

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"哈哈哈";
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:20];
    label.center = CGPointMake(100, 100);
    [self.view addSubview:label];
};

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

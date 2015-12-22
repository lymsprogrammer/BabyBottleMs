//
//  ViewController.m
//  BabyBottleMs
//
//  Created by Ms on 15/12/21.
//  Copyright © 2015年 NaiBaNaiMa. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc ] init];
    
    //    (1)创建
    UIImage *image = [UIImage imageNamed:@"catchfish_paodantubiao_2"];
    imageView.image = image;
    
    //    (2)设置圆角
    imageView.layer.masksToBounds = YES;
    imageView.layer.cornerRadius = 10;
    
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    imageView.center = CGPointMake(200, 200);
    
    [self.view addSubview:imageView];

    
//    UIImageView *image = [[UIImageView alloc] init];
//    //[image sd_setImageWithURL:[NSURL URLWithString:@"http://ac-vjn6w5s3.clouddn.com/00df9c8f415a3142.png"]];
//    //image.center = CGPointMake(100, 100);
//    catchfish_paodantubiao_2.png
//    image initWithImage:<#(nullable UIImage *)#>
//    [self.view addSubview:image];
    
    
    //    (1)UILabel创建
    UILabel *label = [[UILabel alloc] init];
    
    
    //    (2)设置文字
    label.text = @"我是Label^_^\n我是Label^_^\n我是Label^_^";
    
    
    //    (3)设置文字颜色和大小
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:20];
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

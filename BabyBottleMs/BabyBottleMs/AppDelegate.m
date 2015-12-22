//
//  AppDelegate.m
//  BabyBottleMs
//
//  Created by Ms on 15/12/21.
//  Copyright © 2015年 NaiBaNaiMa. All rights reserved.
//  https://leancloud.cn/data.html?appid=VJn6W5s3srVbsFm1OvUWm5MB#/

#import "AppDelegate.h"
#import <AVOSCloud/AVOSCloud.h>
#import "UIViewController+ViewCon.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor blueColor];
    [self.window makeKeyAndVisible];
    
    ViewCon *listen = [[ViewCon alloc]init];
    UINavigationController *naVC = [[UINavigationController alloc]initWithRootViewController:listen];
    self.window.rootViewController = naVC;
    
    
    // applicationId 即 App Id，clientKey 是 App Key。
    [AVOSCloud setApplicationId:@"VJn6W5s3srVbsFm1OvUWm5MB"
                      clientKey:@"y7wJAK2QYJk84tVaaBhX0uT7"];
    
    //如果想跟踪统计应用的打开情况，后面还可以添加下列代码：
    [AVAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    
//    数据存储
//    AVObject *post = [AVObject objectWithClassName:@"TestObject22"];
//    [post setObject:@"Hello,World!~~" forKey:@"w1ords"];
//    [post setObject:@"Hello,22World!~~" forKey:@"w22ords"];
//    [post setObject:@"Hello,33World!~~" forKey:@"wo2222rds"];
//    
//    
//    [post saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
//     {
//        if (succeeded)
//        {
//            NSLog(@"保存成功了");
//        }
//    }];
    
    //数据存储
    AVObject *post = [AVObject objectWithClassName:@"Post"];
    [post setObject:@"每个 Objective-C 程序员必备的 8 个开发工具" forKey:@"content"];
    [post setObject:@"LeanCloud官方客服" forKey:@"pubUser"];
    [post setObject:[NSNumber numberWithInt:1435541999] forKey:@"pubTimestamp"];
    [post save];
    [post saveInBackground]; //可在后台线程中保存之前的 AVObject 实例：
    
    
    //取数据
    AVQuery *query = [AVQuery queryWithClassName:@"Post"];
    AVObject *getPost = [query getObjectWithId:@"5677b5e760b2298f1231551a"];
    
    int timestamp = [[getPost objectForKey:@"pubTimestamp"] intValue];
    NSString *userName = [getPost objectForKey:@"pubUser"];
    NSString *content = getPost[@"content"];
    
    //获取三个特殊属性：
    NSString *objectId = post.objectId;
    NSDate *updatedAt = post.updatedAt;
    NSDate *createdAt = post.createdAt;
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  AppDelegate.m
//  TabBarDemo
//
//  Created by Rakuyo on 2017/8/7.
//  Copyright © 2017年 Rakuyo. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"
#import "RKOTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 创建视图
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    // 创建TabBar
    RKOTabBarController *tabBarVC = [RKOTabBarController sharedManager];
    
    // 创建测试用VC
    TestViewController *testVC = [[TestViewController alloc] init];
    TestViewController *testVC2 = [[TestViewController alloc] init];
    TestViewController *testVC3 = [[TestViewController alloc] init];
    TestViewController *testVC4 = [[TestViewController alloc] init];
    
    // 设置TabBar的样式
    [tabBarVC tabBarTitleHighlightedColor:[UIColor blackColor] backgroundColor:[UIColor greenColor] backgroundImgName:nil];
    
    // 添加VC到TabBar中。
    [tabBarVC addViewController:testVC withTitle:@"test1" normalImageName:@"campus" selectImageName:@"person" selected:YES];
    [tabBarVC addViewController:testVC2 withTitle:@"test2" normalImageName:@"campus" selectImageName:@"person" selected:NO];
    [tabBarVC addViewController:testVC3 withTitle:@"test3" normalImageName:@"campus" selectImageName:@"person" selected:NO];
    [tabBarVC addViewController:testVC4 withTitle:@"test4" normalImageName:@"campus" selectImageName:@"person" selected:NO];
    
    // 添加中间的btn
    UIButton *extraBtn = [[UIButton alloc] init];
    [tabBarVC addExtraBtn:extraBtn];
    

    // 设置根视图
    self.window.rootViewController = tabBarVC;
    
    // 显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

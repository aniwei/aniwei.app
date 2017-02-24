//
//  AppDelegate.m
//  Nil
//
//  Created by 韦沿海 on 2017/2/25.
//  Copyright © 2017年 韦沿海. All rights reserved.
//

#import "AppDelegate.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "Nodelike.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void) initContextWithFile: (NSString *)filePath {
    JSVirtualMachine *vm    = [[JSVirtualMachine alloc] init];
    NLContext *context      = [[NLContext alloc] initWithVirtualMachine:vm];
    
    [NLContext attachToContext:context];
    
    NSString *entryFile     = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initContextWithFile:@"http://127.0.0.1:8000/"];
    
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

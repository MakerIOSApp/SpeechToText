//
//  AppDelegate.m
//  VoiceTask
//
//  Created by Sterling Software on 21/11/16.
//  Copyright © 2016 Sterling Software. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   /* if ([application respondsToSelector:@selector(registerUserNotificationSettings:)]) {
        [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil]];
    }*/
    
       
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{
//    UILocalNotification *notification = [[UILocalNotification alloc] init];
//    notification.fireDate = [[NSDate date] dateByAddingTimeInterval:30];
//    notification.alertBody = @"24 hours passed since last visit :(";
//    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
    
   /*8 UILocalNotification *_localNotification = [[UILocalNotification alloc] init];
    _localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:20];
    _localNotification.timeZone = [NSTimeZone defaultTimeZone];
    _localNotification.alertBody = @"Beep... Beep... Beep...";
    _localNotification.soundName = UILocalNotificationDefaultSoundName;
    _localNotification.alertLaunchImage=@"181537.png";
    [[UIApplication sharedApplication]scheduleLocalNotification:_localNotification];*/
}



- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

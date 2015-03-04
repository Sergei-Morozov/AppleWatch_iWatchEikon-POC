//
//  AppDelegate.swift
//  WatchKitTableDemo
//
//  Created by Natasha Murashev on 11/18/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.;
       // registerSettingsAndCategories();
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: (([NSObject : AnyObject]!) -> Void)!) {

    }

    func registerSettingsAndCategories() {
        var categories = NSMutableSet()
        
        var acceptAction = UIMutableUserNotificationAction()
        acceptAction.title = NSLocalizedString("Read full", comment: "Read full text")
        acceptAction.identifier = "read"
        acceptAction.activationMode = UIUserNotificationActivationMode.Background
        acceptAction.authenticationRequired = false
        
        var declineAction = UIMutableUserNotificationAction()
        declineAction.title = NSLocalizedString("Open in iPhone", comment: "")
        declineAction.identifier = "open"
        declineAction.activationMode = UIUserNotificationActivationMode.Background
        declineAction.authenticationRequired = false
        
        var inviteCategory = UIMutableUserNotificationCategory()
        inviteCategory.setActions([acceptAction, declineAction],
            forContext: UIUserNotificationActionContext.Default)
        inviteCategory.identifier = "News"
        
        categories.addObject(inviteCategory)
        
        // Configure other actions and categories and add them to the set...
        var settings = UIUserNotificationSettings(forTypes: (.Alert | .Badge | .Sound),
            categories: categories as Set<NSObject>)
        
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
    }
}


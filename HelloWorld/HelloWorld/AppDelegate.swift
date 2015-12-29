//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by 王海洋 on 15/12/26.
//  Copyright © 2015年 王海洋. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    //应用启动并初始化时调用并发出通知：这个阶段会实例化根视图控制器
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        NSLog("%@", "应用启动并初始化application:didFinishLaunchingWithOptions:")
        return true
    }

    //应用从活动状态进入非活动状态时调用并发出通知：这个阶段可保存UI的状态
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        NSLog("%@", "应用从活动状态进入非活动状态applicationWillResignActive:")
    }

    //应用进入后台时调用并发出通知：这个阶段可保存用户数据，释放一些资源（如数据库资源等）
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        NSLog("%@", "应用进入后台applicationDidEnterBackground:")
    }

    //应用进入前台，但还没有处于活动状态时调用并发出通知：这个阶段可恢复用户数据
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        NSLog("%@", "应用进入前台applicationWillEnterForeground:")
    }

    //应用进入前台并处于活动状态时调用并发出通知：这个阶段可恢复UI的状态（如游戏状态）
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        NSLog("%@", "应用进入前台并处于活动状态applicationDidBecomeActive:")
    }
    
    //应用被终止时调用并发出通知，但内存清除时除外：这个阶段释放一些资源，也可保存用户数据
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        NSLog("%@", "应用被终止applicationWillTerminate:")
    }


}


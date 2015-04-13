//
//  AppDelegate.swift
//  FizzBuzz-Swift
//
//  Created by Douglas Voss on 4/13/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    
    func isBuzzed (arg: Int) -> (Bool) {
        var stringVar : NSString = String(format: "%d", arg)
        var containsNum : Bool = stringVar.containsString("3")
        //println("stringVar = \(stringVar) .containsString(3)=\(containsNum)")
        
        return (arg % 3 == 0 || stringVar.containsString("3"))
    }
    
    func isFizzed (arg: Int) -> (Bool) {
        var stringVar : NSString = String(format: "%d", arg)
        var containsNum : Bool = stringVar.containsString("5")
        //println("stringVar = \(stringVar) .containsString(5)=\(containsNum)")
        
        return (arg % 5 == 0 || stringVar.containsString("5"))
    }
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        isBuzzed(97348)
        isFizzed(97348)
        
        for i in 1...100 {
            var isBuzzedResult = isBuzzed(i)
            var isFizzedResult = isFizzed(i)
            
            if (isBuzzedResult && isFizzedResult) {
                println("FizzBuzz")
            } else if (!isBuzzedResult && isFizzedResult) {
                println("Fizz")
            } else if (isBuzzedResult && !isFizzedResult) {
                println("Buzz")
            } else {
                println("\(i)")
            }
        }
        
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


}


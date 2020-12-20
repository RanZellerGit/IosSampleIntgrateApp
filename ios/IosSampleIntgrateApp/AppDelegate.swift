//
//  AppDelegate.swift
//  IosSampleIntgrateApp
//
//  Created by Ran Zeller on 12/05/2020.
//  Copyright © 2020 Ran Zeller. All rights reserved.
//

import UIKit
import React
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
//        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
//        let rootView = RCTRootView(
//            bundleURL: jsCodeLocation,
//            moduleName: "IosSampleIntgrateApp",
//            initialProperties:nil,
//            launchOptions: nil)
//        let vc = UIViewController()
//        vc.view = rootView
        
//        EventSenderManager.create()
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


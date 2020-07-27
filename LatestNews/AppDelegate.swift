//
//  AppDelegate.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {

    var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if #available(iOS 13, *) {
            //in ios13 the setup is done in scenedelegate
        } else {
            self.window = UIWindow(frame: UIScreen.main.bounds)
            NewsListRouter().setAsNewNavigationRootForWindow(window: window)
        }
        return true
    }
}

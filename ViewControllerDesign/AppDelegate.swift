//
//  AppDelegate.swift
//  ViewControllerDesign
//
//  Created by Eugene Yatsenko on 10.06.2021.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let initialViewController = TestViewController(
            contentView: TestContentView(
                viewModel: TestViewModel()
            )
        )
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()

        return true
    }



}


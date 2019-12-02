//
//  AppDelegate.swift
//  EASY TL v3
//
//  Created by User on 9/26/19.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        let authListener = Auth.auth().addStateDidChangeListener{ auth, user in
            
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            
            //Not sure if we need next 10 lines of code but still....
            if user != nil{
                let controller = storyboard.instantiateViewController(withIdentifier: "HomeVC") as! UIViewController
                self.window?.rootViewController = controller
                self.window?.makeKeyAndVisible()
            }
            else{
                let controller = storyboard.instantiateViewController(withIdentifier: "SignInVC") as! UIViewController
                self.window?.rootViewController = controller
                self.window?.makeKeyAndVisible()
            }
        }
        
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


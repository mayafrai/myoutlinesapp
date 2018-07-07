//
//  AppDelegate.swift
//  Myoutlines
//
//  Created by Maya Frai on 3/15/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit

@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
   
        window = UIWindow()
        window?.makeKeyAndVisible()
        
        
        let feedViewController = UINavigationController(rootViewController: FeedViewController())
        feedViewController.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "icons8-Dog House-90"), selectedImage: #imageLiteral(resourceName: "icons8-Dog House-90"))
        
        let todoViewController = UINavigationController(rootViewController: TodoViewController())
        todoViewController.tabBarItem = UITabBarItem(title: "Todo List", image: #imageLiteral(resourceName: "list-90"), selectedImage: #imageLiteral(resourceName: "list_filled90"))
        
        let bookmarkViewController = UINavigationController(rootViewController: BookmarkViewController())
        bookmarkViewController.tabBarItem = UITabBarItem(title: "Bookmarks", image: #imageLiteral(resourceName: "bookmark_unfilled-90"), selectedImage: #imageLiteral(resourceName: "bookmark_filled-90"))
        
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([feedViewController, todoViewController, bookmarkViewController], animated: true)
        window?.rootViewController = tabBarController
               

        return true
    }
    

    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    

    
    
    
}


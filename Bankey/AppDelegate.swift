//
//  AppDelegate.swift
//  Bankey
//
//  Created by Alexandra on 12.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let loginViewController = LoginViewController()
    let onboardingVC = OnboardingContainerViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        //loginViewController.delegate = self
        //window?.rootViewController = loginViewController
        onboardingVC.delegate = self
        window?.rootViewController = onboardingVC
//        window?.rootViewController = OnboardingViewController(heroImageName: "second", titleText: "Some text. I have no idea what is it")
        
        return true
    }

}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
         print("foo -  Did login")
    }
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        print("foo - did finish onboarding")
    }
}



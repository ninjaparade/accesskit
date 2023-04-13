//
//  StartUpCoordinator.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import UIKit
import SwiftUI

final class StartUpCoordinator: NSObject {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let userLoggedIn = true // dummmy variable for know, this info could be derived from the token or other sources - depending on your backend setup
        
        if userLoggedIn {
            let tabBarViewController = AppTabBarController()
            window.rootViewController = tabBarViewController
        } else {
            let navigationController = UINavigationController()
            let router = LoginRouter(navigationController: navigationController)
            let loginViewModel = LoginViewModel(router: router)
            let loginView = LoginView().environmentObject(loginViewModel)
            let viewController = UIHostingController(rootView: loginView)
            navigationController.viewControllers = [viewController]
            window.rootViewController = navigationController
        }
        window.makeKeyAndVisible()
    }
}

//
//  AppTabBarViewController.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import UIKit
import SwiftUI

final class AppTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        let home = getConfiguredHomeView()
        let account = getConfiguredAccountView()
        let locations = getConfiguredLocationsView()
        setViewControllers([home, locations, account], animated: true)
    }
    
    private func getConfiguredHomeView() -> UINavigationController {
        let homeNavigationController = UINavigationController()
        let homeRouter = HomeRouter(navigationController: homeNavigationController)
        let homeViewModel = HomeViewModel(router: homeRouter)
        let homeView = HomeView().environmentObject(homeViewModel)
        let homeViewController = UIHostingController(rootView: homeView)
        homeNavigationController.viewControllers = [homeViewController]
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "home"), tag: 0)
        return homeNavigationController
    }
    
    private func getConfiguredAccountView() -> UINavigationController {
        let accountNavigationController = UINavigationController()
        let accountRouter = AccountRouter(navigationController: accountNavigationController)
        let accountViewModel = AccountViewModel(router: accountRouter)
        let accountView = AccountView().environmentObject(accountViewModel)
        let accountViewController = UIHostingController(rootView: accountView)
        accountNavigationController.viewControllers = [accountViewController]
        accountNavigationController.tabBarItem = UITabBarItem(title: "Account", image: nil, tag: 2)
        return accountNavigationController
    }
    
    private func getConfiguredLocationsView() -> UINavigationController {
        let locationsNavigationController = UINavigationController()
        let locationsRouter = LocationsRouter(navigationController: locationsNavigationController)
        let locationsViewModel = LocationsViewModel(router: locationsRouter)
        let locationsView = LocationsView().environmentObject(locationsViewModel)
        let locationsViewController = UIHostingController(rootView: locationsView)
        locationsNavigationController.viewControllers = [locationsViewController]
        locationsNavigationController.tabBarItem = UITabBarItem(title: "Locations", image: nil, tag: 1)
        return locationsNavigationController
    }
}

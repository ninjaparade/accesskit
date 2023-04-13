//
//  HomeRouter.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation
import SwiftUI

final class HomeRouter: AppRouter {
    func showDetails(for item: String) {
        let router = HomeDetailRouter(navigationController: navigationController)
        let homeDetailViewModel = HomeDetailViewModel(item: item, router: router)
        let homeDetailView = HomeDetailView().environmentObject(homeDetailViewModel)
        let homeDetailViewController = UIHostingController(rootView: homeDetailView)
        show(homeDetailViewController)
    }
}

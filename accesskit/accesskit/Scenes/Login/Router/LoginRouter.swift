//
//  LoginRouter.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation
import SwiftUI

final class LoginRouter: AppRouter {
    func showEmailView() {
        let emailRouter = EmailRouter(navigationController: navigationController)
        let viewModel = EmailViewModel(router: emailRouter)
        let emailView = EmailView().environmentObject(viewModel)
        let viewController = UIHostingController(rootView: emailView)
        show(viewController)
    }
}

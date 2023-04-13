//
//  LoginViewModel.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation

final class LoginViewModel: ObservableObject {
    private let router: LoginRouter
    
    init(router: LoginRouter) {
        self.router = router
    }
    
    func didTapNextButton() {
        router.showEmailView()
    }
}

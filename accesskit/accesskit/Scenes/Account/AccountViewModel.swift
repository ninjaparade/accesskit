//
//  AccountViewModel.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation

final class AccountViewModel: ObservableObject {
    private let router: AccountRouter
    
    init(router: AccountRouter) {
        self.router = router
    }
}

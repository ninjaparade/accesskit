//
//  HomeViewModel.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation

final class HomeViewModel: ObservableObject {
    private let router: HomeRouter
    
    init(router: HomeRouter) {
        self.router = router
    }
    
    func didTap(on item: String) {
        router.showDetails(for: item)
    }
}

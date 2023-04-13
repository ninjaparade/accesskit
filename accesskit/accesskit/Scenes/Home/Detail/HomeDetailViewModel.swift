//
//  HomeDetailViewModel.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation

final class HomeDetailViewModel: ObservableObject {
    private let router: HomeDetailRouter
    let item: String
    
    init(item: String, router: HomeDetailRouter) {
        self.item = item
        self.router = router
    }
}

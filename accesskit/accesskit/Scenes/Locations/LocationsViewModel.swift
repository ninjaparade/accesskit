//
//  LocationsView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation

final class LocationsViewModel: ObservableObject {
    private let router: LocationsRouter
    
    init(router: LocationsRouter) {
        self.router = router
    }
}

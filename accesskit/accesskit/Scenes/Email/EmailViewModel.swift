//
//  EmailViewModel.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import Foundation

final class EmailViewModel: ObservableObject {
    private let router: EmailRouter
    
    init(router: EmailRouter ) {
        self.router = router
    }
}

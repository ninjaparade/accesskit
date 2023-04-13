//
//  AppRouter.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import UIKit

class AppRouter: NSObject {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func pop(animated: Bool = true) {
        navigationController?.popViewController(animated: animated)
    }
    
    func show(_ vc: UIViewController, animated: Bool = true) {
        if vc is UIAlertController {
            navigationController?.present(vc, animated: animated)
        } else {
            navigationController?.pushViewController(vc, animated: animated)
        }
    }
}

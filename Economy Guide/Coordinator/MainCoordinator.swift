//
//  MainCoordinator.swift
//  Economy Guide
//
//  Created by Kauê Camargo Ludovico on 25/04/21.
//  Copyright © 2021 Big Rocket Digital Solutions. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func viewCounts(count: Count?) {
        let viewController = CountsViewController.instantiate()
        viewController.coordinator = self
        if count != nil {
            viewController.receiveData(count: (count ?? nil)!)
        }
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func createCount() {
        let viewController = RegisterCountViewController.instantiate()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}


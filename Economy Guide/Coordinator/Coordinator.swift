//
//  Coordinator.swift
//  Economy Guide
//
//  Created by Kauê Camargo Ludovico on 25/04/21.
//  Copyright © 2021 Big Rocket Digital Solutions. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
//    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func viewCounts(count: Count?)
}

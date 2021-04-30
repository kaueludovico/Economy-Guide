//
//  RegisterCounts.swift
//  Economy Guide
//
//  Created by Kauê Camargo Ludovico on 25/04/21.
//  Copyright © 2021 Big Rocket Digital Solutions. All rights reserved.
//

import Foundation
import UIKit

class RegisterCountViewController: UIViewController, Storyboarded {
    var coordinator: MainCoordinator?
    
    @IBOutlet weak var switchPayment: UISwitch!
    @IBOutlet weak var value: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var dueDate: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    func everyInfos() -> Count {
        let newCount: Count = {
            var count = Count()
            count.value = value.text
            count.name = name.text
            count.dueDate = dueDate.text
            
            if switchPayment.isOn {
                count.status = "Pago"
            } else {
                count.status = "Não Pago"
            }
            return count
        }()
        return newCount
    }
    
    @IBAction func createRegister(_ sender: Any) {
        //do nothing
        coordinator?.viewCounts(count: everyInfos())
    }
    
}

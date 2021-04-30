//
//  CountCollectionViewCell.swift
//  Economy Guide
//
//  Created by Kauê Camargo Ludovico on 15/04/21.
//  Copyright © 2021 Big Rocket Digital Solutions. All rights reserved.
//

import Foundation
import UIKit

class CountCollectionViewCell: BaseViewCell {
    
    let targetStatus: UIView = {
        let view = UIView()
        return view
    }()
    
    let value: UILabel = {
        let label = UILabel()
        label.text = "R$ 1.000,00"
        return label
    }()
    
    let name: UILabel = {
        let label = UILabel()
        label.text = "Nome de quem vai ser pago"
        return label
    }()
    
    let dueDate: UILabel = {
        let label = UILabel()
        label.text = "10/10/2021"
        return label
    }()
    
    let labelStatus: UILabel = {
        let label = UILabel()
        label.text = "Pago"
        return label
    }()
    
    
    override func setupViews() {
        

    }
    
    func createCell(view: UIView) {
        view.addSubview(targetStatus)
        targetStatus.backgroundColor = .green
        targetStatus.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 3, height: 0))
    }
}

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
    
    var count: Count? {
        didSet {
            name.text = count?.name
            labelStatus.text = count?.status
        }
    }
    
    let targetStatus: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .green
        view.layer.cornerRadius = 10
        return view
    }()
    
    let value: UILabel = {
        let label: UILabel = UILabel()
        label.text = "R$ 1.000,00"
        return label
    }()
    
    let name: UILabel = {
        let label: UILabel = UILabel()
        return label
    }()
    
    let dueDate: UILabel = {
        let label: UILabel = UILabel()
        label.text = "10/10/2021"
        return label
    }()
    
    let labelStatus: UILabel = {
        let label: UILabel = UILabel()
        return label
    }()
    
    let containerView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    override func setupViews() {
        createCell()
    }
    
    func createCell() {
        // Container View
        addSubview(containerView)
        
        containerView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        containerView.centerAnchor(x: centerXAnchor, y: centerYAnchor, size: .init(width: frame.width - 16, height: 96))
        
        // Componentes do Container View
        containerView.addSubview(targetStatus)
        containerView.addSubview(name)
        
        targetStatus.anchor(top: containerView.topAnchor, leading: containerView.leadingAnchor, bottom: containerView.bottomAnchor, trailing: nil, padding: .init(top: 2, left: 0, bottom: 0, right: 0), size: .init(width: 3, height: 0))
        
        name.anchor(top: targetStatus.topAnchor, leading: targetStatus.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 8, bottom: 0, right: 0), size: .init(width: 150, height: 20))
        
    }
}

//
//  ViewController.swift
//  Economy Guide
//
//  Created by Kauê Camargo Ludovico on 13/04/21.
//  Copyright © 2021 Big Rocket Digital Solutions. All rights reserved.
//

import UIKit

var cellId = "cellId"

class CountsViewController: UIViewController, Storyboarded {
    
    var coordinator: MainCoordinator?
    var listCounts: [Count]? = []
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var stateList: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
        
        let count1: Count = {
            var count: Count = Count()
            count.name = "Internet"
            count.dueDate = "18/07/21"
            count.status = "Pago"
            count.value = "R$ 187.90"
            return count
        }()
        
        receiveData(count: count1)
    }
    
    @IBAction func insertCell(_ sender: Any) {
        coordinator?.createCount()
    }
    
    public func receiveData(count: Count) {
        listCounts = [count]
    }
}

extension CountsViewController {
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CountCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.alwaysBounceHorizontal = false
        collectionView.backgroundColor = .gray
        
        if let list = listCounts {
            if list.count <= 0 {
                stateList.text = "Ainda não há nenhum registro de contas!"
            } else {
                stateList.isHidden = true
            }
        }
    }
}

extension CountsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let list = listCounts {
            if list.count <= 0 {
                stateList.text = "Ainda não há nenhum registro de contas!"
            } else {
                stateList.isHidden = true
            }
        }
        return listCounts?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CountCollectionViewCell
        
        if let count = listCounts?[indexPath.item] {
            cell.count = count
        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // do nothing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}


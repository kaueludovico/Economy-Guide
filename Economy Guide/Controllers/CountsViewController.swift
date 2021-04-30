//
//  ViewController.swift
//  Economy Guide
//
//  Created by Kauê Camargo Ludovico on 13/04/21.
//  Copyright © 2021 Big Rocket Digital Solutions. All rights reserved.
//

import UIKit


class CountsViewController: UIViewController, Storyboarded {
    
    var coordinator: MainCoordinator?
    var listCounts = [Count]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var stateList: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.register(CountCollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.alwaysBounceHorizontal = false
        
        if listCounts.count <= 0 {
            stateList.text = "Ainda não há nenhum registro de contas!"
        } else {
            stateList.isHidden = true
        }
    }
    
    @IBAction func insertCell(_ sender: Any) {
        coordinator?.createCount()
    }
    
    public func receiveData(count: Count) {
        listCounts = [count]
    }
}

extension CountsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if listCounts.count <= 0 {
            stateList.text = "Ainda não há nenhum registro de contas!"
        } else {
            stateList.isHidden = true
        }
        
        return listCounts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CountCollectionViewCell
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // do nothing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}


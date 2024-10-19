//
//  ViewController.swift
//  CollectionViews
//
//  Created by Héctor Abril Bringas on 18/10/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let myCountries = ["Mexico", "España", "Peru","Colombia","Argentina","EEUU","Francia","Italia"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
         //registrar el tipo de celda custom
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }


}
//MARK --UICOLLECTIONVIEWDATASOURCE
extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        cell!.myFirstLabel.text = myCountries[indexPath.row]
        return cell!
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row) \(myCountries[indexPath.row])")
    }
}
extension ViewController: UICollectionViewDelegate

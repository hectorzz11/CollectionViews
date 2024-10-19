//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Héctor Abril Bringas on 18/10/24.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFirstLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .lightGray
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
    }

}

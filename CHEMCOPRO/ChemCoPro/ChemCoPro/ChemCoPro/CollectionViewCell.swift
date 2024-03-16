//
//  CollectionViewCell.swift
//  ChemCoPro
//
//  Created by Manish Bhanushali on 21/10/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var views: UIView!
    @IBOutlet weak var collimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
 
        views.layer.cornerRadius = 10
        views.layer.borderWidth = 5
        views.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
}

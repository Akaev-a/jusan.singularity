//
//  CategoryCell.swift
//  Stepik736
//
//  Created by Akaev on 23/9/2023.
//

import UIKit
struct Category {
    var categoryName: String
}

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var buttonCell: UIButton!
    
    func configure(with model: Category) {
        buttonCell.setTitle(model.categoryName, for: .normal)
    }
}



//
//  TopCell.swift
//  KinokzCopy
//
//  Created by Akaev on 3/8/2023.
//

import UIKit


struct TopButtonItem {
    let nameButton: String
}

class TopCell: UICollectionViewCell {

    @IBOutlet weak var topButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with model: TopButtonItem) {
        topButton.setTitle(model.nameButton, for: .normal)
        
        topButton.layer.cornerRadius = 6
        topButton.clipsToBounds = true
    }
}



//
//  PromotionCollectionViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 3/10/2023.
//

import UIKit

class PromotionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imagePromo: UIImageView!
    @IBOutlet weak var dateSale: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure (with model: PromotionItem) {
        imagePromo.image = model.imagePromo
        imagePromo.layer.cornerRadius = 16
        imagePromo.clipsToBounds = true

        
        dateSale.text = model.dateSale
       
    }

}

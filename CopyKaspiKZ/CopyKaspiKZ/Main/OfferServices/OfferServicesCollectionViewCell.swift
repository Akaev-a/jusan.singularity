//
//  OfferServicesCollectionViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 4/10/2023.
//

import UIKit

class OfferServicesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var discriptionsProduct: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure (with model: OfferServiceItem) {
        imageProduct.image = model.imageProduct
        imageProduct.layer.cornerRadius = 8
        imageProduct.clipsToBounds = true

        nameProduct.text = model.nameProduct
        
        discriptionsProduct.text = model.discriptionProduct
       
    }

}

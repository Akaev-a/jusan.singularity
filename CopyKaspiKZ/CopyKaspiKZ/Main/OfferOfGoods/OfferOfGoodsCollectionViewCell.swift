//
//  OfferOfGoodsCollectionViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 7/10/2023.
//

import UIKit

class OfferOfGoodsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageGoods: UIImageView!
    @IBOutlet weak var labelGoods: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure (with model: GoodsItem) {
        imageGoods.image = model.imageGoodsItem
        imageGoods.layer.cornerRadius = 16
        imageGoods.clipsToBounds = true

        
        labelGoods.text = model.labelGoodsItem
       
    }

}

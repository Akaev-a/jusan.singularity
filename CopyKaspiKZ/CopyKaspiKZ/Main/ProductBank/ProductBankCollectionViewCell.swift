//
//  ProductBankCollectionViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 3/10/2023.
//

import UIKit

class ProductBankCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageBankProduct: UIImageView!
    @IBOutlet weak var nameBankProduct: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure (with model: ProductBankItem) {
        imageBankProduct.image = model.imageProductBank
        
        nameBankProduct.text = model.nameProductBank
    }
}

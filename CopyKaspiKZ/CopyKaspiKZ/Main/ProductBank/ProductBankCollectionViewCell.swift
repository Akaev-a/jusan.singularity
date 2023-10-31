//
//  ProductBankCollectionViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 3/10/2023.
//

import UIKit

class ProductBankCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlet
    @IBOutlet weak var imageBankProduct: UIImageView!
    @IBOutlet weak var nameBankProduct: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func configure (with model: ProductBankItem) {
        imageBankProduct.image = model.imageProductBank
        
        nameBankProduct.text = model.nameProductBank
    }
}

//
//  ConcertCell.swift
//  KinokzCopy
//
//  Created by Akaev on 3/8/2023.
//

import UIKit
struct ConcertItem {
    let image: UIImage
    
}
class ConcertCell: UICollectionViewCell {
    @IBOutlet private weak var concertImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(witth model: ConcertItem) {
        concertImage.image = model.image
        concertImage.layer.cornerRadius = 20
        concertImage.clipsToBounds = true
    }
}

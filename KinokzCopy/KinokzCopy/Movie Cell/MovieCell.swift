//
//  MovieCell.swift
//  KinokzCopy
//
//  Created by Akaev on 3/8/2023.
//

import UIKit

struct MovieItem {
    let image: UIImage
    let nameTitle: String
    let descriptionTitle: String
    let censorshipTitle: String
    let ratingTitle: String
}
class MovieCell: UICollectionViewCell {

    @IBOutlet weak var moviePreview: UIImageView!
    @IBOutlet weak var movieNameTitle: UILabel!
    @IBOutlet weak var descriptionTitle: UILabel!
    @IBOutlet weak var censorshipTitle: UILabel!
    @IBOutlet weak var ratingTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func configure(witth model: MovieItem) {
        moviePreview.image = model.image
        moviePreview.layer.cornerRadius = 6
        moviePreview.clipsToBounds = true
        
        movieNameTitle.text = model.nameTitle
        
        descriptionTitle.text = model.descriptionTitle
        
        censorshipTitle.text = model.censorshipTitle
        censorshipTitle.layer.cornerRadius = 10
        censorshipTitle.clipsToBounds = true
        
        ratingTitle.text = model.ratingTitle
        ratingTitle.layer.cornerRadius = 2
        ratingTitle.clipsToBounds = true
    }

}

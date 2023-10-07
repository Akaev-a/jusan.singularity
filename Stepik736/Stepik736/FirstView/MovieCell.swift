//
//  CollectionViewCell.swift
//  Stepik736
//
//  Created by Akaev on 23/9/2023.
//

import UIKit

struct Movie {
    var image: UIImage
    var name: String
    var raiting: String
}

class MovieCell: UICollectionViewCell {
    @IBOutlet weak var imageMovie: UIImageView!
    
    @IBOutlet weak var nameMovie: UILabel!
    @IBOutlet weak var raitingMovie: UILabel!
    
    func configure(with model: Movie) {
        imageMovie.image = model.image
        nameMovie.text = model.name
        raitingMovie.text = model.raiting
    }

}

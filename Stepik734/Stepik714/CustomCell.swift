//
//  CustomCell.swift
//  Stepik714
//
//  Created by Akaev on 21/9/2023.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameComentCell: UILabel!
    @IBOutlet weak var comentLabelCell: UILabel!
    @IBOutlet weak var dateComent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

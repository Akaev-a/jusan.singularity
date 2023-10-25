//
//  ContactCell.swift
//  Stepik8.3.3
//
//  Created by Akaev on 23/10/2023.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var imageContact: UIImageView!
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var numberContact: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

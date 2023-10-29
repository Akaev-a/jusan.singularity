//
//  MessageTableViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 29/10/2023.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageMessage: UIImageView!
    @IBOutlet weak var nameProductMessage: UILabel!
    @IBOutlet weak var actionDiscriptionsMessage: UILabel!
    @IBOutlet weak var discriptionsMessage: UILabel!
    @IBOutlet weak var dateLastMessage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

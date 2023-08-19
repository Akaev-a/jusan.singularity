//
//  ratingCell1.swift
//  1LessonClassWork
//
//  Created by Akhmed Akaev on 26.07.2023.
//

import UIKit

class ratingCell1: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var name: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

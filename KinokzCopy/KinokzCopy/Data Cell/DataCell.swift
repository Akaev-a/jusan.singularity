//
//  DataCell.swift
//  KinokzCopy
//
//  Created by Akaev on 3/8/2023.
//

import UIKit
import FSCalendar

class DataCell: UICollectionViewCell, FSCalendarDelegate {
    let calendar = FSCalendar()
        
    @IBOutlet weak var dataCell1: FSCalendar!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}


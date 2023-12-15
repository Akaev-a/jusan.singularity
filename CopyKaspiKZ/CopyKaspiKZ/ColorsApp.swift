//
//  ColorsApp.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 8/11/2023.
//

import UIKit

extension UIColor {
    convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

struct ColorsApp {
    static let background = UIColor(hex: 0x424242)
    static let text = UIColor(hex: 0xB4B4B4)
    static let cell = UIColor(hex: 0x555555)
}

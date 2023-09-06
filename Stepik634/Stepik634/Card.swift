//
//  Card.swift
//  Stepik634
//
//  Created by Akaev on 6/9/2023.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatchet = false
    var identifeir: Int
    
    static var identifeirFactory = 0
    static func getUniqueIdentifeir() -> Int {
        identifeirFactory += 1
        return identifeirFactory
    }
    init() {
        self.identifeir = Card.getUniqueIdentifeir()
    }
}

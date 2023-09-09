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
    private var identifier: Int
    
    private static var identifeirFactory = 0
    private static func getUniqueIdentifeir() -> Int {
        identifeirFactory += 1
        return identifeirFactory
    }
    init() {
        self.identifier = Card.getUniqueIdentifeir()
    }
}
extension Card: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    static func == (lhs: Card, rhs: Card) -> Bool {
        lhs.identifier == rhs.identifier
    }
}

//
//  Concentration.swift
//  Stepik634
//
//  Created by Akaev on 6/9/2023.
//

import Foundation

Class Concentration {
    var cards: [Card] = []
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    //
    }
    func chooseCard (at index: Int) {
        cards[index].isFaceUp.toggle()
    }
}

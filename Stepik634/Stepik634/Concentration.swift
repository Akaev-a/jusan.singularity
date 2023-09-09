//
//  Concentration.swift
//  Stepik634
//
//  Created by Akaev on 6/9/2023.
//

import Foundation

protocol ConcentrationDelegate: AnyObject {
    func didUpdateCount(with count: Int)
}

class Concentration {
    var cards: [Card] = []
    func randomCard() {
        cards = cards.shuffled()
    }
    
    
    var indexOfOne: Int?
    weak var delegate: ConcentrationDelegate?
    var flipCount = 0 {
        didSet {
            delegate?.didUpdateCount(with: flipCount)
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        randomCard()
    }
    
    
    func chooseCard (at index: Int) {
        guard !cards[index].isMatchet else { return }
        flipCount += 1
        if let matchIndex = indexOfOne, matchIndex != index {
            if cards[matchIndex] == cards[index] {
                cards[matchIndex].isMatchet = true
                cards[index].isMatchet = true
            }
            cards[index].isFaceUp = true
            indexOfOne = nil
        } else {
            for flipDownIndex in cards.indices {
                cards[flipDownIndex].isFaceUp = false
            }
            cards[index].isFaceUp = true
            indexOfOne = index
        }
        
    }
    
    func restart() {
        for index in cards.indices {
            cards[index].isFaceUp = false
            cards[index].isMatchet = false
        }
        randomCard()
        flipCount = 0
        indexOfOne = nil
    }
    
}

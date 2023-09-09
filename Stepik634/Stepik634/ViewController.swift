//
//  ViewController.swift
//  Stepik634
//
//  Created by Akaev on 6/9/2023.
//

import UIKit

class ViewController: UIViewController {
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    
    @IBOutlet var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Количество ходов: \(flipCount)"
        }
    }
    var emojiChoices = ["🐶", "🐱", "🐭", "🐼", "🐻", "🦊", "🐸", "🐥", "🐵","🪿","🐴",]
    var emojiesCache = Dictionary <Int, String>()
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        guard let index = cardButtons.firstIndex(of: sender) else { return }
        game.chooseCard(at: index)
        updateViewFromModel()
        flipCount += 1
    }
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(getEmoji(for: card), for: .normal)
                button.backgroundColor = .white
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatchet ? .clear : .orange
            }
        }
    }
    func getEmoji(for card: Card) -> String {
        if let emoji = emojiesCache[card.identifier] {
            return emoji
        } else {
            guard let randomIndex = emojiChoices.indices.randomElement() else { return "?"}
            let emoji = emojiChoices.remove(at: randomIndex)
            emojiesCache[card.identifier] = emoji
            return emoji
        }
    }
    

}


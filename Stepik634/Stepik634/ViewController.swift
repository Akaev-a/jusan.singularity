//
//  ViewController.swift
//  Stepik634
//
//  Created by Akaev on 6/9/2023.
//

import UIKit

class ViewController: UIViewController {
    lazy var game: Concentration = {
        let game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
        game.delegate = self
        return game
    }()
    
    @IBOutlet var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func restart(_ sender: UIButton) {
        game.restart()
    }
    
    
    var emojiChoices = ["🐶", "🐱", "🐭", "🐼", "🐻", "🦊", "🐸", "🐥", "🐵","🪿","🐴",]
    var emojiesCache = Dictionary <Card, String>()
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        guard let index = cardButtons.firstIndex(of: sender) else { return }
        game.chooseCard(at: index)
        updateViewFromModel()
        
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
        if let emoji = emojiesCache[card] {
            return emoji
        } else {
            guard let randomIndex = emojiChoices.indices.randomElement() else { return "?"}
            let emoji = emojiChoices.remove(at: randomIndex)
            emojiesCache[card] = emoji
            return emoji
        }
    }
}

extension ViewController: ConcentrationDelegate {
    func didUpdateCount(with count: Int) {
        flipCountLabel.text = "Кол-во ходов: \(count)"
    }
}

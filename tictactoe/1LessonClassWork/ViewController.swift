//
//  ViewController.swift
//  1LessonClassWork
//
//  Created by Akhmed Akaev on 05.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        win.isHidden = true
        
    }
    
    @IBOutlet var labelWinner: UILabel!
    var game = TicTacToe()

    @IBOutlet var arrayButton: [UIButton]!
    var counter = 0
    
    @IBAction func ButtonClick(_ sender: UIButton) {
        let index = arrayButton.firstIndex(of: sender)!
        game.writeXO(at: index)
        updateView()
    }
    @IBAction func restartButton(_ sender: UIButton) {
        game.restart()
        updateView()
        labelWinner.text = ""
        win.isHidden = true
        
    }
    @IBOutlet weak var win: UIButton!
    func winS() {
        win.isHidden = false
    }
    
    
    func updateView() {
        for i in arrayButton.indices {
            let button = arrayButton[i]
            let card = game.XOs[i]
            if card.isFaceApp{
                button.setTitle(card.label, for: .normal)
                button.isEnabled = false
            }
            else {
                button.setTitle("", for: .normal)
                button.isEnabled = true
                
            }
        }
        if let winner = game.winGame() {
            labelWinner.text = "Winner: \(winner)"
            for i in arrayButton {
                i.isEnabled = false
            }
            winS()
        }
    }
}

// кнопка рестарт в контролере функции рестарт
// во вьюхе сама кнопка баттон клик - экшен для кнопки рестарт

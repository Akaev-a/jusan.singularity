//
//  Controller.swift
//  1LessonClassWork
//
//  Created by Akhmed Akaev on 12.07.2023.
//

import Foundation

class TicTacToe {
    var XOs:[XO] = []
    var counter = 0
    var winCombination = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var playWithAI = false
    var personPlayX = true
    
    init() {
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
    }
    
    func choiseXO(at index:Int) {
        counter += 1
        if counter%2 == 0 {
            XOs[index].writeXO = "⭕️"
        
        }
        else {
            XOs[index].writeXO = "❌"
        }
        XOs[index].isFaceApp = true
        
        if playWithAI && counter < 9 {
            var randomChoice = Int.random(in: 0...8)
            while XOs[randomChoice].isFaceApp {
                randomChoice = Int.random(in: 0...8)
            }
            counter += 1
            if counter%2 == 0 {
                XOs[randomChoice].writeXO = "⭕️"
            }
            else {
                XOs[randomChoice].writeXO = "❌"
            }
            XOs[randomChoice].isFaceApp = true
        }
    }
    func restart() {
        counter = 0
        for i in XOs.indices {
            XOs[i].writeXO = nil
            XOs[i].isFaceApp = false
        }
        if personPlayX {
            if playWithAI {
                var randomChoice = Int.random(in: 0...8)
                counter += 1
                XOs[randomChoice].writeXO = "❌"
                XOs[randomChoice].isFaceApp = true
            }
        }
        personPlayX.toggle()
    }
    
    func winGame( ) -> String? {
        for i in winCombination {
            if XOs[i[0]].writeXO == XOs[i[1]].writeXO && XOs[i[1]].writeXO == XOs[i[2]].writeXO && XOs[i[0]].isFaceApp {
                return XOs[i[0]].writeXO
            }
        }
        if counter == 9 {
            return "Draw"
        }
        return nil
    }
}

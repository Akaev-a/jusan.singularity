//
//  Controller.swift
//  1LessonClassWork
//
//  Created by Akhmed Akaev on 12.07.2023.
//

import Foundation

class TicTacToe {
    var XOs:[XO] = []
    var indexUp = 0
    var winCombination = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var isPlayAI = true
    init() {
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
    }
    
    func writeXO(at index:Int) {
        indexUp += 1
        if indexUp%2 == 0 {
            XOs[index].label = "⭕️"
        
        }
        else {
            XOs[index].label = "❌"
        }
        XOs[index].isFaceApp = true
        
        if isPlayAI && indexUp < 9 {
            var indexAI = Int.random(in: 0...8)
            while XOs[indexAI].isFaceApp
            {
                indexAI = Int.random(in: 0...8)
                
            }
            indexUp += 1
            if indexUp%2 == 0 {
                XOs[indexAI].label = "⭕️"
            }
            else {
                XOs[indexAI].label = "❌"
            }
            XOs[indexAI].isFaceApp = true
        }
    }
    func winGame( ) -> String? {
        for i in winCombination {
            if XOs[i[0]].label == XOs[i[1]].label && XOs[i[1]].label == XOs[i[2]].label && XOs[i[0]].isFaceApp {
                return XOs[i[0]].label
            } 
        }
        if indexUp == 9 {
            return "`drawwww"
        }
        return nil
    }
    func restart() {
        for i in XOs.indices {
            XOs[i].label = nil
            XOs[i].isFaceApp = false
        }
        indexUp = 0
    }
}

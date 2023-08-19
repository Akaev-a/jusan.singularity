//
//  WinnerViewController.swift
//  1LessonClassWork
//
//  Created by Akaev on 6/8/2023.
//

import UIKit

class WinnerViewController: UIViewController {

    @IBOutlet weak var winnerText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "winner" {
            var index:Int?
            for i in RatingDB.arrayRating.indices {
                if RatingDB.arrayRating[i].name == winnerText.text {
                    index = i
                }
            }
            if index != nil {
                RatingDB.arrayRating[index!].score += 10
            } else {
                RatingDB.arrayRating.append(Rating(name: winnerText.text!, score: 10))
            }
        }
    }
}

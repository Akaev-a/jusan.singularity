//
//  chouseViewController.swift
//  1LessonClassWork
//
//  Created by Akaev on 5/8/2023.
//

import UIKit

class chouseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueWithAI" {
            let destination = segue.destination as! ViewController
            destination.game.isPlayAI = true
        }
    }

}

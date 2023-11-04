//
//  RatingViewController.swift
//  1LessonClassWork
//
//  Created by Akhmed Akaev on 26.07.2023.
//

import UIKit

class RatingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ratingTableView.dataSource = self
        ratingTableView.delegate = self
        RatingDB.arrayRating.sort{$0.score > $1.score}

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ratingTableView: UITableView!
    
}

extension RatingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RatingDB.arrayRating.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ratingCell1
        cell.name.text = RatingDB.arrayRating[indexPath.row].name
        cell.score.text = String(RatingDB.arrayRating[indexPath.row].score)
        
        return cell
    }
}

//
//  ViewController.swift
//  KinokzCopy
//
//  Created by Akaev on 3/8/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var topCollectionView: UICollectionView!
    @IBOutlet private weak var concertCollectionView: UICollectionView!
    @IBOutlet private weak var dataCollectionView: UICollectionView!
    @IBOutlet private weak var movieCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCollectionView.dataSource = self
        let nibTop = UINib(nibName: "TopCell", bundle: .main)
        topCollectionView.register(nibTop, forCellWithReuseIdentifier: "TopCell")
        
        concertCollectionView.dataSource = self
        let nibConcert = UINib(nibName: "ConcertCell", bundle: .main)
        concertCollectionView.register(nibConcert, forCellWithReuseIdentifier: "ConcertCell")

        dataCollectionView.dataSource = self
        let nibData = UINib(nibName: "DataCell", bundle: .main)
        dataCollectionView.register(nibData, forCellWithReuseIdentifier: "DataCell")

        movieCollectionView.dataSource = self
        let nibMovie = UINib(nibName: "MovieCell", bundle: .main)
        movieCollectionView.register(nibMovie, forCellWithReuseIdentifier: "MovieCell")

    }
}
// MARK: - let

private let top: [TopButtonItem] = [
    TopButtonItem(nameButton: "🔥Все"),
    TopButtonItem(nameButton: "🎙️Театры"),
    TopButtonItem(nameButton: "🎬Кино"),
    TopButtonItem(nameButton: "⚽️Спорт")
]


private let concert: [ConcertItem] = [
    ConcertItem(image: UIImage(named: "eminem")!),
    ConcertItem(image: UIImage(named:"jusan")!),
    ConcertItem(image: UIImage(named: "imagine-dragons")!),
    ConcertItem(image: UIImage(named:"jazz")!)
]



private let movie: [MovieItem] = [
    MovieItem(image: UIImage(named: "eminem")!, nameTitle: "Eminem", descriptionTitle: "Eminem - artist year", censorshipTitle: "12+", ratingTitle: "⭐️ 9.9"),
    MovieItem(image: UIImage(named: "jazz")!, nameTitle: "Jazz", descriptionTitle: "Jazz, music, americain", censorshipTitle: "6+", ratingTitle: "⭐️ 7.1"),
    MovieItem(image: UIImage(named: "imagine-dragons")!, nameTitle: "Imagine Dragons", descriptionTitle: "Imagine Dragons - ", censorshipTitle: "9+", ratingTitle: "⭐️ 9.0")

]

// MARK: - extension

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return top.count
        } else if collectionView == concertCollectionView {
            return concert.count
            } else if collectionView == dataCollectionView {
                return 1
            } else if collectionView == movieCollectionView {
                return movie.count
            }
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == topCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopCell", for: indexPath) as! TopCell
            cell.configure(with: top[indexPath.row])
            return cell
            
        } else if collectionView == concertCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ConcertCell", for: indexPath) as! ConcertCell
            cell.configure(witth: concert[indexPath.row])
            return cell
            
        } else if collectionView == dataCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DataCell", for: indexPath) as! DataCell
            return cell
            
        } else if collectionView == movieCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
            cell.configure(witth: movie[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}


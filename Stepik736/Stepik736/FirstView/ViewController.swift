//
//  ViewController.swift
//  Stepik736
//
//  Created by Akaev on 23/9/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var movieCollView: UICollectionView!
    @IBOutlet weak var categoryCollView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollView.delegate = self
        movieCollView.dataSource = self

        categoryCollView.delegate = self
        categoryCollView.dataSource = self
    }


}

let movie: [Movie] = [
        Movie(image: UIImage(named: "avatar")!, name: "Аватар: в кино с 21 марта", raiting: "⭐︎5.0"),
        Movie(image: UIImage(named: "vyzov")!, name: "Вызов: набирай по-срочному", raiting: "⭐︎4.5"),
        Movie(image: UIImage(named: "boginya")!, name: "Я Богиня: могу все", raiting: "⭐︎4.2"),
        Movie(image: UIImage(named: "avatar")!, name: "Аватар: в кино с 21 марта", raiting: "⭐︎5.0"),
        Movie(image: UIImage(named: "vyzov")!, name: "Вызов: набирай по-срочному", raiting: "⭐︎4.5"),
        Movie(image: UIImage(named: "boginya")!, name: "Я Богиня: могу все", raiting: "⭐︎4.2"),
        Movie(image: UIImage(named: "avatar")!, name: "Аватар: в кино с 21 марта", raiting: "⭐︎5.0"),
        Movie(image: UIImage(named: "vyzov")!, name: "Вызов: набирай по-срочному", raiting: "⭐︎4.5"),
        Movie(image: UIImage(named: "boginya")!, name: "Я Богиня: могу все", raiting: "⭐︎4.2")
    ]

let category: [Category] = [
    Category(categoryName: "Все"),
    Category(categoryName: "Экшен"),
    Category(categoryName: "Блокбастеры"),
    Category(categoryName: "Романтические"),
    Category(categoryName: "Боевик"),
    Category(categoryName: "Комедия"),
    Category(categoryName: "Next2")

]

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == movieCollView {
            return movie.count
        } else if collectionView == categoryCollView {
            return category.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == movieCollView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
            cell.configure(with: movie[indexPath.row])
            return cell
            
        } else if collectionView == categoryCollView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
            cell.configure(with: category[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}

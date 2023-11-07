//
//  ServiceTableViewCell.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 31/10/2023.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    
// MARK: - IBOutlet
    @IBOutlet weak var registrationView: UIView!
    @IBOutlet weak var serviceBankCollectionView: UICollectionView!
    @IBOutlet weak var magnumViewService: UIView!
    @IBOutlet weak var chocoViewService: UIView!
    @IBOutlet weak var offerServiceCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        serviceBankCollectionView.dataSource = self
        serviceBankCollectionView.delegate = self
        
        offerServiceCollectionView.dataSource = self
        offerServiceCollectionView.delegate = self
        
        serviceBankCollectionView.register(UINib(nibName: "ProductBankCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductBankCollectionViewCell")
        offerServiceCollectionView.register(UINib(nibName: "OfferOfGoodsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OfferOfGoodsCollectionViewCell")


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}


private let goods = ArrayCollectionService.goods
private let product = ArrayCollectionService.product



extension ServiceTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == serviceBankCollectionView {
            return product.count
        } else if  collectionView == offerServiceCollectionView {
            return goods.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == serviceBankCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductBankCollectionViewCell", for: indexPath) as! ProductBankCollectionViewCell
            cell.configure(with: product[indexPath.row])
            return cell
        }
        else if collectionView == offerServiceCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OfferOfGoodsCollectionViewCell", for: indexPath) as! OfferOfGoodsCollectionViewCell
            cell.configure(with: goods[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == serviceBankCollectionView {
            let numberOfButtons: CGFloat = CGFloat (4)
            let collectionViewWidth = collectionView.frame.size.width
            let buttonWidth = collectionViewWidth / numberOfButtons
            let buttonHeight: CGFloat = 30
            print("индекс кнопки1: \(indexPath), ширина buttonWidth: \(buttonWidth), высота buttonHeight \(buttonHeight)")
            return CGSize(width: buttonWidth, height: buttonHeight)
            }

        return CGSize(width: 0, height: 0)
    }
    
}



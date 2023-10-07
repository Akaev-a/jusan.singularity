//
//  ViewController.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 3/10/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout {

    // MARK: - IBOutlet
    
    @IBOutlet weak var promotionCollectionView: UICollectionView!
    @IBOutlet weak var productBank: UICollectionView!
    @IBOutlet weak var offerService: UICollectionView!
    @IBOutlet weak var offerOfGoods: UICollectionView!
    @IBOutlet weak var magnumView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        promotionCollectionView.dataSource = self
        let promoNib = UINib(nibName: "PromotionCollectionViewCell", bundle: .main)
        promotionCollectionView.register(promoNib, forCellWithReuseIdentifier: "PromotionCollectionViewCell")
        
        offerService.dataSource = self
        let offerServiceNib = UINib(nibName: "OfferServicesCollectionViewCell", bundle: .main)
        offerService.register(offerServiceNib, forCellWithReuseIdentifier: "OfferServicesCollectionViewCell")
        
        offerOfGoods.dataSource = self
        let offerGoodsNib = UINib(nibName: "OfferOfGoodsCollectionViewCell", bundle: .main)
        offerOfGoods.register(offerGoodsNib, forCellWithReuseIdentifier: "OfferOfGoodsCollectionViewCell")
        
        productBank.dataSource = self
        productBank.delegate = self
        let productBankNib = UINib(nibName: "ProductBankCollectionViewCell", bundle: .main)
        productBank.register(productBankNib, forCellWithReuseIdentifier: "ProductBankCollectionViewCell")
    }

}
// MARK: -

private let promo: [PromotionItem] = [
    PromotionItem(imagePromo: UIImage(named: "main-ru")!, dateSale: "03 октября - 09 октября"),
    PromotionItem(imagePromo: UIImage(named: "main-ru4")!, dateSale: "03 октября - 09 октября"),
    PromotionItem(imagePromo: UIImage(named: "main-ru2")!, dateSale: "03 октября - 09 октября"),
    PromotionItem(imagePromo: UIImage(named: "main-ru3")!, dateSale: "03 октября - 09 октября"),
    PromotionItem(imagePromo: UIImage(named: "main")!, dateSale: "03 октября - 09 октября")
]
private let offerServiceArray: [OfferServiceItem] = [
    OfferServiceItem(imageProduct: UIImage(named: "Red")!, nameProduct: "Kaspi Red", discriptionProduct: "Рассрочка 0%"),
    OfferServiceItem(imageProduct: UIImage(named: "Kredit")!, nameProduct: "Рассрочка 0-0-3", discriptionProduct: ""),
    OfferServiceItem(imageProduct: UIImage(named: "KN")!, nameProduct: "Кредит наличными", discriptionProduct: "До 1 млн тенге"),
    OfferServiceItem(imageProduct: UIImage(named: "DepositNew")!, nameProduct: "Kaspi депозит", discriptionProduct: "Эффективная ставка 16%"),
    OfferServiceItem(imageProduct: UIImage(named: "gold")!, nameProduct: "Kaspi gold", discriptionProduct: "")
]

private let goods: [GoodsItem] = [
    GoodsItem(imageGoodsItem: UIImage(named: "uslugi-mebel")!, labelGoodsItem: "Изготовление мебели"),
    GoodsItem(imageGoodsItem: UIImage(named: "uslugi-okna")!, labelGoodsItem: "Ремонт окон"),
    GoodsItem(imageGoodsItem: UIImage(named: "uslugi-santehnik")!, labelGoodsItem: "Услуги сантехника")
]

private let product: [ProductBankItem] = [
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi"),
    ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Gosuslugi")

]

// MARK: - extension
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == promotionCollectionView {
            return promo.count
        }
        else if collectionView == offerService {
            return offerServiceArray.count
        }
        else if collectionView == offerOfGoods {
            return goods.count
        }
        else if collectionView == productBank {
            return 8
        }
            
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == promotionCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PromotionCollectionViewCell", for: indexPath) as! PromotionCollectionViewCell
            cell.configure(with: promo[indexPath.row])
            return cell
        }
        
        else if collectionView == offerService {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OfferServicesCollectionViewCell", for: indexPath) as! OfferServicesCollectionViewCell
            cell.configure(with: offerServiceArray[indexPath.row])
            return cell
        }
        
        else if collectionView == offerOfGoods {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OfferOfGoodsCollectionViewCell", for: indexPath) as! OfferOfGoodsCollectionViewCell
            cell.configure(with: goods[indexPath.row])
            return cell
        }
        else if collectionView == productBank {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductBankCollectionViewCell" , for: indexPath) as! ProductBankCollectionViewCell
            cell.configure(with: product[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == productBank {
            let numberOfButtons: CGFloat = CGFloat (4)
            let collectionViewWidth = collectionView.frame.size.width
            let buttonWidth = collectionViewWidth / numberOfButtons
            let buttonHeight: CGFloat = productBank.frame.size.height / 2 - 6
            print("индекс кнопки: \(indexPath), ширина buttonWidth: \(buttonWidth), высота buttonHeight \(buttonHeight)")
            return CGSize(width: buttonWidth, height: buttonHeight)
            }

        return collectionView.collectionViewLayout.collectionViewContentSize
    }
    
}


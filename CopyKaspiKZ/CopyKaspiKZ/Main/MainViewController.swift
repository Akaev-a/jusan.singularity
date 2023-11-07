//
//  ViewController.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 3/10/2023.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegateFlowLayout {

    // MARK: - IBOutlet
    
    @IBOutlet weak var promotionCollectionView: UICollectionView!
    @IBOutlet weak var productBank: UICollectionView!
    @IBOutlet weak var offerService: UICollectionView!
    @IBOutlet weak var offerOfGoods: UICollectionView!
    @IBOutlet weak var magnumView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        promotionCollectionView.dataSource = self
        promotionCollectionView.delegate = self
        let promoNib = UINib(nibName: "PromotionCollectionViewCell", bundle: .main)
        promotionCollectionView.register(promoNib, forCellWithReuseIdentifier: "PromotionCollectionViewCell")
        
        offerService.dataSource = self
        offerService.delegate = self
        let offerServiceNib = UINib(nibName: "OfferServicesCollectionViewCell", bundle: .main)
        offerService.register(offerServiceNib, forCellWithReuseIdentifier: "OfferServicesCollectionViewCell")
        
        offerOfGoods.dataSource = self
        offerOfGoods.delegate = self
        let offerGoodsNib = UINib(nibName: "OfferOfGoodsCollectionViewCell", bundle: .main)
        offerOfGoods.register(offerGoodsNib, forCellWithReuseIdentifier: "OfferOfGoodsCollectionViewCell")
        
        
        productBank.dataSource = self
        productBank.delegate = self
        let productBankNib = UINib(nibName: "ProductBankCollectionViewCell", bundle: .main)
        productBank.register(productBankNib, forCellWithReuseIdentifier: "ProductBankCollectionViewCell")
    }

}


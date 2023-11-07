//
//  ArrayCollectionMainView.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 7/11/2023.
//

import UIKit
struct ArrayCollection {
    
    static let promo: [PromotionItem] = [
        PromotionItem(imagePromo: UIImage(named: "main-ru")!, dateSale: "03 октября - 09 октября", segueIdentifier: "shop"),
        PromotionItem(imagePromo: UIImage(named: "main-ru4")!, dateSale: "03 октября - 09 октября", segueIdentifier: "shop"),
        PromotionItem(imagePromo: UIImage(named: "main-ru2")!, dateSale: "03 октября - 09 октября", segueIdentifier: "shop"),
        PromotionItem(imagePromo: UIImage(named: "main-ru3")!, dateSale: "03 октября - 09 октября", segueIdentifier: "shop"),
        PromotionItem(imagePromo: UIImage(named: "main")!, dateSale: "03 октября - 09 октября", segueIdentifier: "shop")
    ]
    static let offerServiceArray: [OfferServiceItem] = [
        OfferServiceItem(imageProduct: UIImage(named: "Red")!, nameProduct: "Kaspi Red", discriptionProduct: "Рассрочка 0%", segueIdentifier: "myBank"),
        OfferServiceItem(imageProduct: UIImage(named: "Kredit")!, nameProduct: "Рассрочка 0-0-3", discriptionProduct: "", segueIdentifier: "myBank"),
        OfferServiceItem(imageProduct: UIImage(named: "KN")!, nameProduct: "Кредит наличными", discriptionProduct: "До 1 млн тенге", segueIdentifier: "myBank"),
        OfferServiceItem(imageProduct: UIImage(named: "DepositNew")!, nameProduct: "Kaspi депозит", discriptionProduct: "Эффективная ставка 16%", segueIdentifier: "myBank"),
        OfferServiceItem(imageProduct: UIImage(named: "gold")!, nameProduct: "Kaspi gold", discriptionProduct: "", segueIdentifier: "myBank")
    ]

    static let goods: [GoodsItem] = [
        GoodsItem(imageGoodsItem: UIImage(named: "uslugi-mebel")!, labelGoodsItem: "Изготовление мебели", segueIdentifier: "Ad1"),
        GoodsItem(imageGoodsItem: UIImage(named: "uslugi-okna")!, labelGoodsItem: "Ремонт окон", segueIdentifier: "Ad1"),
        GoodsItem(imageGoodsItem: UIImage(named: "uslugi-santehnik")!, labelGoodsItem: "Услуги сантехника", segueIdentifier: "Ad1")
    ]

    static let product: [ProductBankItem] = [
        ProductBankItem(imageProductBank: UIImage(named: "QR")!, nameProductBank: "Kaspi QR", segueIdentifier: "QR"),
        ProductBankItem(imageProductBank: UIImage(named: "Bank")!, nameProductBank: "Мой банк", segueIdentifier: "myBank"),
        ProductBankItem(imageProductBank: UIImage(named: "Payments")!, nameProductBank: "Платежи", segueIdentifier: "payments"),
        ProductBankItem(imageProductBank: UIImage(named: "Transfers")!, nameProductBank: "Переводы", segueIdentifier: "transfers"),
        ProductBankItem(imageProductBank: UIImage(named: "Shop")!, nameProductBank: "Магазин", segueIdentifier: "shop"),
        ProductBankItem(imageProductBank: UIImage(named: "Travel")!, nameProductBank: "Travel", segueIdentifier: "travel"),
        ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Госуслуги", segueIdentifier: "gov"),
        ProductBankItem(imageProductBank: UIImage(named: "Ad")!, nameProductBank: "Объявления", segueIdentifier: "ad")

    ]
}

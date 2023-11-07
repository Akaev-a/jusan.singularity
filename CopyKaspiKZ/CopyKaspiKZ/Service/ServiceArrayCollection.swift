//
//  ServiceArrayCollection.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 7/11/2023.
//

import UIKit
struct ArrayCollectionService {
    static let goods: [GoodsItem] = [
       GoodsItem(imageGoodsItem: UIImage(named: "uslugi-mebel")!, labelGoodsItem: "Изготовление мебели", segueIdentifier: ""),
       GoodsItem(imageGoodsItem: UIImage(named: "uslugi-okna")!, labelGoodsItem: "Ремонт окон", segueIdentifier: ""),
       GoodsItem(imageGoodsItem: UIImage(named: "uslugi-santehnik")!, labelGoodsItem: "Услуги сантехника", segueIdentifier: "")
        ]

    static let product: [ProductBankItem] = [
       ProductBankItem(imageProductBank: UIImage(named: "QR")!, nameProductBank: "Kaspi QR", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Bank")!, nameProductBank: "Мой банк", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Payments")!, nameProductBank: "Платежи", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Transfers")!, nameProductBank: "Переводы", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Shop")!, nameProductBank: "Магазин", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Travel")!, nameProductBank: "Travel", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Gov")!, nameProductBank: "Госуслуги", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Ad")!, nameProductBank: "Объявления", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "QR")!, nameProductBank: "Kaspi QR", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Bank")!, nameProductBank: "Мой банк", segueIdentifier: ""),
       ProductBankItem(imageProductBank: UIImage(named: "Payments")!, nameProductBank: "Платежи", segueIdentifier: "")
       ]
}

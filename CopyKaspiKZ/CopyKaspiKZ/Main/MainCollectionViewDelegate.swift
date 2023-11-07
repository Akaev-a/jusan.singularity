//
//  MainCollectionViewDelegate.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 7/11/2023.
//

import UIKit
private let promo = ArrayCollection.promo
private let offerServiceArray = ArrayCollection.offerServiceArray
private let goods = ArrayCollection.goods
private let product = ArrayCollection.product

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
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
    
    // MARK: -
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
    
        // MARK: -
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            if collectionView == productBank {
                let numberOfButtons: CGFloat = CGFloat (4)
                let collectionViewWidth = collectionView.frame.size.width
                let buttonWidth = collectionViewWidth / numberOfButtons
                let buttonHeight: CGFloat = productBank.frame.size.height / 2
                print("индекс кнопки: \(indexPath), ширина buttonWidth: \(buttonWidth), высота buttonHeight \(buttonHeight)")
                return CGSize(width: buttonWidth, height: buttonHeight)
                }

            return CGSize(width: 50, height: 50)
        }
        
    
    
        // MARK: -
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           
            let selectedProduct = product[indexPath.item]
//            let selectedPromo = promo[indexPath.item]
//            let selectedGoods = goods[indexPath.item]
//            let selectedOfferServiceArray = offerServiceArray[indexPath.item]
            
            
            // MARK: - центральное меню с основными банковскими кнопками
            if selectedProduct.segueIdentifier == "myBank" {
                if let myBankViewController = storyboard?.instantiateViewController(withIdentifier: "MyBankID") as? MyBankViewController {
                    navigationController?.pushViewController(myBankViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "payments" {
                if let paymentsViewController = storyboard?.instantiateViewController(withIdentifier: "PaymentsID") as? PaymentsViewController {
                    navigationController?.pushViewController(paymentsViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "transfers" {
                if let tranfersViewController = storyboard?.instantiateViewController(withIdentifier: "TransfersID") as? TransfersViewController {
                    navigationController?.pushViewController(tranfersViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "shop" {
                if let shopViewController = storyboard?.instantiateViewController(withIdentifier: "ShopID") as? ShopViewController {
                    navigationController?.pushViewController(shopViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "QR" {
                if let cameraViewController = storyboard?.instantiateViewController(withIdentifier: "QRID") as? CameraViewController {
                    navigationController?.pushViewController(cameraViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "gov" {
                if let govViewController = storyboard?.instantiateViewController(withIdentifier: "GovID") as? GovViewController {
                    navigationController?.pushViewController(govViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "travel" {
                if let travelViewController = storyboard?.instantiateViewController(withIdentifier: "TravelID") as? TravelViewController {
                    navigationController?.pushViewController(travelViewController, animated: true)
                }
            }
            else if selectedProduct.segueIdentifier == "ad" {
                if let adViewController = storyboard?.instantiateViewController(withIdentifier: "AdID") as? AdViewController {
                    navigationController?.pushViewController(adViewController, animated: true)
                }
            }
            
//            // MARK: - верхняя плашка с предложениями магазина
//            if collectionView == promotionCollectionView {
//                if indexPath.item < promo.count {
//                    let selectedGoods = promo[indexPath.item]
//                    if selectedPromo.segueIdentifier == "shop" {
//                        if let shopViewController = storyboard?.instantiateViewController(withIdentifier: "ShopID") as? ShopViewController {
//                            navigationController?.pushViewController(shopViewController, animated: true)
//                        }
//                    }
//                }
//            }
//            // MARK: - услуги сервиса объявлении внизу
//
//            if collectionView == offerOfGoods {
//                if indexPath.item < goods.count {
//                    let selectedGoods = goods[indexPath.item]
//                    if selectedGoods.segueIdentifier == "Ad" {
//                        if let adViewController = storyboard?.instantiateViewController(withIdentifier: "AdID") as? AdViewController {
//                            navigationController?.pushViewController(adViewController, animated: true)
//                        }
//                    }
//                }
//            }
//            // MARK: - банковские продукты: депозиты, кредиты
//
//            if selectedOfferServiceArray.segueIdentifier == "myBank" {
//                 if let offerViewController = storyboard?.instantiateViewController(withIdentifier: "MyBankID") as? MyBankViewController {
//                     navigationController?.pushViewController(offerViewController, animated: true)
//                 }
//             }
//
            
            
            // MARK: -
        }
    }


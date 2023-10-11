//
//  QRTabBar.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 11/10/2023.


import UIKit
import AVFoundation

class CameraViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
            imagePicker.delegate = self

            present(imagePicker, animated: true, completion: nil)
        }
    }
}


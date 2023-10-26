//
//  DetailViewController.swift
//  Stepik8.3.3
//
//  Created by Akaev on 23/10/2023.
//

import UIKit

class DetailViewController: UIViewController {

    var imageDetail: UIImage?
    var nameDetail: String?
    var numberDetail: String?
    
    var imageDetailView: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 20, y: 120, width: 90, height: 90))
        image.layer.cornerRadius = 8
        image.layer.masksToBounds = true
        return image
    }()
    
    
    var nameDetailView: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 130, width: UIScreen.main.bounds.width*0.9, height: 22))
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    var numberDetailView: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 160, width: UIScreen.main.bounds.width*0.9, height: 20))
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .left
        return label
    }()
    
    var deleteButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: UIScreen.main.bounds.height-80, width: UIScreen.main.bounds.width*0.9, height: 40))
        button.setTitle("Delete", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)

        
        return button
    }()
    
    var callButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: UIScreen.main.bounds.height-130, width: UIScreen.main.bounds.width*0.9, height: 40))
        button.setTitle("Call", for: .normal)
        button.backgroundColor = .systemMint
        
        return button

    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageDetailView)
        view.addSubview(nameDetailView)
        view.addSubview(numberDetailView)
        view.addSubview(callButton)
        view.addSubview(deleteButton)
        
        if let image = imageDetail {
            imageDetailView.image = image
        }

        if let name = nameDetail {
            nameDetailView.text = name
        }

        if let number = numberDetail {
            numberDetailView.text = number
        }
        
        
        let editButton = UIBarButtonItem(title: "Изм.", style: .plain, target: self, action: #selector(editButtonTapped))
                  navigationItem.rightBarButtonItem = editButton
        
       }
    @objc func editButtonTapped() {
        if let editContactViewController = storyboard?.instantiateViewController(withIdentifier: "EditContact") as? EditContactViewController {
                navigationController?.pushViewController(editContactViewController, animated: true)
            editContactViewController.editNumber1 = numberDetail!
            editContactViewController.editName1 = nameDetail!
            }

        }
    
    
    @objc func deleteButtonTapped() {
        if let name = nameDetail {
            if let index = ContactDB.arrayContact.firstIndex(where: { $0.name == name }) {
                ContactDB.arrayContact.remove(at: index)
                navigationController?.popViewController(animated: true)
                
            }
        }
    }
    
    
}




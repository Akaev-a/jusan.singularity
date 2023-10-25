//
//  AddContactViewController.swift
//  Stepik8.3.3
//
//  Created by Akaev on 25/10/2023.
//

import UIKit

class AddContactViewController: UIViewController {

    @IBOutlet weak var nameContact: UITextField!
    @IBOutlet weak var numberContact: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addContact" {
            var index: Int?
            for i in ContactDB.arrayContact.indices {
                if ContactDB.arrayContact[i].name == nameContact.text {
                    index = i
                    break
                }
            }
            if let name = nameContact.text, let number = numberContact.text {
                ContactDB.arrayContact.append(infoContact(imageInfo: UIImage(named: "vyzov")!, name: name, number: number))
            }
        }
    }

}


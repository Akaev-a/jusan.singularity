//
//  EditContactViewController.swift
//  Stepik8.3.3
//
//  Created by Akaev on 26/10/2023.
//

import UIKit

class EditContactViewController: UIViewController {
    var editNumber1: String = ""
    var editName1: String = ""
    
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var editNumber: UITextField!
    @IBOutlet weak var editName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleView = UIView()
        let imageView = UIImageView(image: UIImage(named: "vyzov"))
        imageView.frame = CGRect(x: -24, y: 0, width: 28, height: 28)
        imageView.contentMode = .scaleAspectFit
        
        let label = UILabel()
        label.text = "Edit contact"
        label.font = .systemFont(ofSize: 18)
        label.sizeToFit()
        label.frame.origin.x = 8
        titleView.addSubview(imageView)
        titleView.addSubview(label)
        navigationItem.titleView = titleView
        
        editNumber.text = editNumber1
        editName.text = editName1
    }
    

}

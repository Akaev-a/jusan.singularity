//
//  ServiceViewController.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 29/10/2023.
//

import UIKit

class ServiceViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var serviceTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceTable.dataSource = self
        serviceTable.delegate = self
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 180, height: 44))
        let imageView = UIImageView(frame: CGRect(x: 12, y: 0, width: 30, height: 30))
        imageView.image = UIImage(named: "favicon")
        imageView.contentMode = .scaleAspectFit
               
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: 168, height: 32))
        label.text = "Cервисы"
        label.textAlignment = .center
               
        titleView.addSubview(imageView)
        titleView.addSubview(label)
               
        navigationItem.titleView = titleView

    }
}
extension ServiceViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = serviceTable.dequeueReusableCell(withIdentifier: "serviceViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000
    }
    
    
}



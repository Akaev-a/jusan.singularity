//
//  ViewController.swift
//  Stepik8.3.3
//
//  Created by Akaev on 23/10/2023.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
       
        let createButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createButtonTapped))
        navigationItem.rightBarButtonItem = createButton
        navigationItem.hidesBackButton = true

    }
    @objc func createButtonTapped() {
        if let addContactViewController = storyboard?.instantiateViewController(withIdentifier: "AddContact") as? AddContactViewController {
                navigationController?.pushViewController(addContactViewController, animated: true)
            }
    }

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactDB.arrayContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! ContactCell
        
        cell.imageContact.image = ContactDB.arrayContact[indexPath.row].imageInfo
        cell.nameContact.text = ContactDB.arrayContact[indexPath.row].name
        cell.numberContact.text = ContactDB.arrayContact[indexPath.row].number
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            let index = myTable.indexPathForSelectedRow?.row
            detailViewController.imageDetail = ContactDB.arrayContact[index!].imageInfo
            detailViewController.nameDetail = ContactDB.arrayContact[index!].name
            detailViewController.numberDetail = ContactDB.arrayContact[index!].number
            navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
   
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            ContactDB.arrayContact.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}


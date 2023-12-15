//
//  MyBankViewController.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 5/11/2023.
//

import UIKit

enum DataSection: CaseIterable {
    case section1
    case section2
    case section3
    case section4
    case section5
}


class MyBankViewController: UIViewController {

    var myBankTableView: UITableView!
    
    var data: [DataSection: [String]] = [
        .section1: ["Оплатите кредит До 11 ноября"],
        .section2: ["Каспи голд", "Оформить Каспи для ребенка"],
        .section3: ["Депозит 1", "Депозит 3", "Открыть Депозит 3"],
        .section4: ["Кредит наличными", "Рассрочка на 12 месяцев"],
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myBankTableView = UITableView(frame: view.bounds, style: .plain)
        myBankTableView.dataSource = self
        myBankTableView.delegate = self
        myBankTableView.backgroundColor = ColorsApp.background
        
        myBankTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyBankTableViewCell")
        
        view.addSubview(myBankTableView)
        

        
        navigationController?.isNavigationBarHidden = false
    }
}



extension MyBankViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - данные
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataSection.allCases.count
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionEnum = DataSection.allCases[section]
        guard let values = data[sectionEnum] else { return 0 }
        
        return values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyBankTableViewCell", for: indexPath)
        let sectionEnum = DataSection.allCases[indexPath.section]
        let values = data[sectionEnum]?[indexPath.row]
        
        cell.textLabel?.text = values
        cell.backgroundColor = ColorsApp.cell
        cell.textLabel?.textColor = ColorsApp.text
        
               return cell
           }
    // MARK: - разделитель
    func createSectionSeparatorView() -> UIView {
        let separatorView = UIView()
        separatorView.backgroundColor = ColorsApp.background
        return separatorView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let separatorView = createSectionSeparatorView()
            return separatorView
    }
    // MARK: -
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 8
    }
}

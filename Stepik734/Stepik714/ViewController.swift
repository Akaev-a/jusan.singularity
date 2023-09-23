//
//  ViewController.swift
//  Stepik714
//
//  Created by Akaev on 19/9/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabView: UITableView!
    var coments: [Coments] = [
        Coments.init(imageCell: UIImage(systemName: "book")!, nameCell: "Ivan", coment: "Одно из самых важных нововведений новых iPhone 15 Pro — титановый корпус. Это более прочный и устойчивый к повреждениям металл, но многие журналисты особо акцентируют внимание на легкости материала.", dateComent: "21.09.2023 11:20 PM"),
        Coments.init(imageCell: UIImage(systemName: "lasso")!, nameCell: "Анвар", coment: "Мой старый iPhone 14 Pro, он ощущается как кирпич. Разница в весе между Pro этого и прошлого года заметна даже с чехлом", dateComent: "22.09.2023 09:20 PM"),
        Coments.init(imageCell: UIImage(systemName: "ruler")!, nameCell: "Майкл", coment: "Это заметная разница. iPhone 15 Pro отнюдь не легкий, но пользоваться им в течение длительного времени гораздо удобнее", dateComent: "22.09.2023 06:45 АM"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabView.dataSource = self
        tabView.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CustomCell
            
        cell.imageCell.image = coments[indexPath.row].imageCell
        cell.nameComentCell.text = coments[indexPath.row].nameCell
        cell.comentLabelCell.text = coments[indexPath.row].coment
        cell.dateComent.text = coments[indexPath.row].dateComent
        
        return cell
        }
}

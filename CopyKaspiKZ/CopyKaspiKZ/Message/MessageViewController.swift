//
//  MessageViewController.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 29/10/2023.
//

import UIKit

class MessageViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var messageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTableView.dataSource = self
        messageTableView.delegate = self
        messageTableView.separatorColor = UIColor.red
        
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 180, height: 44))
        let imageView = UIImageView(frame: CGRect(x: 12, y: 0, width: 30, height: 30))
        imageView.image = UIImage(named: "favicon")
        imageView.contentMode = .scaleAspectFit
               
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: 168, height: 32))
        label.text = "Cообщения"
        label.textAlignment = .center
               
        titleView.addSubview(imageView)
        titleView.addSubview(label)
               
        navigationItem.titleView = titleView

    }
}
var messages: [InfoMessage] = [
    InfoMessage(imageMessage: UIImage(named: "gold")!, nameMessage: "Kaspi Gold", actionDicriptionsMessage: "Perevod", dicriptionsMessage: "500 000 tenge", dateMessage: "27.10.2023"),
    InfoMessage(imageMessage: UIImage(named: "gold")!, nameMessage: "Kaspi Gold", actionDicriptionsMessage: "Perevod", dicriptionsMessage: "500 000 tenge", dateMessage: "27.10.2023"),
    InfoMessage(imageMessage: UIImage(named: "KN")!, nameMessage: "Kaspi Kredit", actionDicriptionsMessage: "", dicriptionsMessage: "500 000 tenge", dateMessage: "27.10.2023")

]
extension MessageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell") as! MessageTableViewCell
        
        let message = messages[indexPath.row]

        cell.imageMessage.image = message.imageMessage
        cell.nameProductMessage.text = message.nameMessage
        cell.actionDiscriptionsMessage.text = message.actionDicriptionsMessage
        cell.discriptionsMessage.text = message.dicriptionsMessage
        cell.dateLastMessage.text = message.dateMessage
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74
    }
    
    
}

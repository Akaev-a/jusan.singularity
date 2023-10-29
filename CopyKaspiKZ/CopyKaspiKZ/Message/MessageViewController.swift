//
//  MessageViewController.swift
//  CopyKaspiKZ
//
//  Created by Akaev on 29/10/2023.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var messageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTableView.dataSource = self
        messageTableView.delegate = self
        messageTableView.separatorColor = UIColor.red

    }
}
var messages: [InfoMessage] = [
    InfoMessage(imageMessage: UIImage(named: "gold")!, nameMessage: "Kaspi Gold", actionDicriptionsMessage: "Perevod", dicriptionsMessage: "500 000 tenge", dateMessage: "27.10.2023"),
    InfoMessage(imageMessage: UIImage(named: "gold")!, nameMessage: "Kaspi Gold", actionDicriptionsMessage: "Perevod", dicriptionsMessage: "500 000 tenge", dateMessage: "27.10.2023"),
    InfoMessage(imageMessage: UIImage(named: "gold")!, nameMessage: "Kaspi Gold", actionDicriptionsMessage: "Perevod", dicriptionsMessage: "500 000 tenge", dateMessage: "27.10.2023")

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
    
    
}

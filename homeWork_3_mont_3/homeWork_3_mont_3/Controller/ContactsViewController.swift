//
//  ContactsViewController.swift
//  homeWork_3_mont_3
//
//  Created by Аяз on 18/4/23.
//
import UIKit

class ContactsViewController: UIViewController {
    
    private let cellid = "cell"
    private var contactList: [Contacts] = []
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        initData()
    }
    
    
    private func initUI(){
        contactsTableView.dataSource = self
        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func initData(){
        contactList = [Contacts(image: "contact1", name: "Jane Cooper", number: "(270) 555-0117"),
                       Contacts(image: "contact2", name: "Devon Lane", number: "(308) 555-0121"),
                       Contacts(image: "contact3", name: "Darrell Steward", number: "(684) 555-0102"),
                       Contacts(image: "contact4", name: "Devon Lane", number: "(704) 555-0127"),
                       Contacts(image: "contact5", name: "Courtney Henry", number: "(505) 555-0125"),
                       Contacts(image: "contact6", name: "Wade Warren", number: "(225) 555-0118"),
                       Contacts(image: "contact7", name: "Bessie Cooper", number: "(406) 555-0120"),
                       Contacts(image: "contact8", name: "Robert Fox", number: "(480) 555-0103"),
                       Contacts(image: "contact9", name: "Jacob Jones", number: "(702) 555-0122"),
                       Contacts(image: "contact10", name: "Jenny Wilson", number: "(239) 555-0108")
        ]
    }
}

extension ContactsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contactList[indexPath.row].name
        cell.imageView?.image = UIImage(named: contactList[indexPath.row].image )
        cell.detailTextLabel?.text = contactList[indexPath.row].number
        return cell
    }
}

struct Contacts{
    var image: String
    var name: String
    var number: String
}

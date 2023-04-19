//
//  ViewController.swift
//  homeWork_3_mont_3
//
//  Created by Аяз on 18/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func LoginButton(_ sender: Any) {
        if enterNameTF.text?.isEmpty ?? true {
            enterNameTF.layer.borderWidth = 2
            enterNameTF.layer.borderColor = UIColor.red.cgColor
            enterNameTF.placeholder = "Пожалуйста, заполните!"
        }
        if enterNameTF.text?.isEmpty == false{
            let openContactsVC = self.storyboard?.instantiateViewController(withIdentifier: "ContactsViewController") as! ContactsViewController
            self.navigationController?.pushViewController(openContactsVC, animated: false)
        }
    }
    
    
    


}


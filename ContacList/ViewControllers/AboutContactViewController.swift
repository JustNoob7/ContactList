//
//  AboutContactViewController.swift
//  ContacList
//
//  Created by Ярослав Бойко on 13.10.2021.
//

import UIKit

class AboutContactViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullname
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
    
}

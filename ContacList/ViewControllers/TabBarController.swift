//
//  TabBarController.swift
//  ContacList
//
//  Created by Ярослав Бойко on 13.10.2021.
//

import UIKit

class TabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let contacts = Contact.getContacts()
        let contactsVC = viewControllers?.first as! ContactsListViewController
        let anotherContactsVC = viewControllers?.last as! AnotherContactsListViewController
        
        contactsVC.contacts = contacts
        anotherContactsVC.contacts = contacts
    }

}

//
//  ContactsListViewController.swift
//  ContacList
//
//  Created by Ярослав Бойко on 13.10.2021.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    var contacts: [Contact]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        
        content.text = contact.fullname
        cell.contentConfiguration = content
        
        return cell
    }
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutContactVC = segue.destination as? AboutContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        aboutContactVC.contact = contacts[indexPath.row]
    }

}

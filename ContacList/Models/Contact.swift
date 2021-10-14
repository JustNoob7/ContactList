//
//  Contact.swift
//  ContacList
//
//  Created by Ярослав Бойко on 13.10.2021.
//

import Foundation

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let contact = Contact(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            
            contacts.append(contact)
        }
        
        
        return contacts
    }
}

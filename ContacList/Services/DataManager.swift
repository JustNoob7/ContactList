//
//  DataManager.swift
//  ContacList
//
//  Created by Ярослав Бойко on 13.10.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Yaroslav", "John", "Boris",
                 "Keka", "Andrey", "Alexander",
                 "Amer", "Anatan", "Sebastian", "Vlad"]
    
    let surnames = ["Boyko", "Grishin", "Kasaev",
                    "Kekskaya", "Lolo", "Kot",
                    "Al-Barkawi", "Fam", "Debs", "Sinotov"]
    
    let phoneNumbers = ["+79999785928", "+79991111111", "+79992222222",
                        "+79993333333", "+79994444444", "+79995555555",
                        "+79996666666", "+79997777777", "+79998888888",
                        "+79999999999"]
    
    let emails = ["allah@allah.allah", "john@grishin.ru", "boris@kasaev.ru",
                  "michael@jackson.ru", "TI@winner.org", "anal@lover.ru",
                  "thirteen@mana.boy", "glina@mes.ru", "kek@lik.ka",
                  "some@email.com"]
    
    private init() {}
}

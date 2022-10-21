//
//  Person.swift
//  ContactList
//
//  Created by Альбина Лега on 19/10/2022.
//

import Foundation
import CoreImage

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var people: [Person] = []
        
        // создаем перемешенные копии массивов:
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        // определяем кол-во итераций, которое равно минимальному кол-ву элементов переданных массивов
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            people.append(person)
        }
        
        return people
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

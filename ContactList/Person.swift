//
//  Person.swift
//  ContactList
//
//  Created by Альбина Лега on 19/10/2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getData() -> [Person] {
        var peopleData: [Person] = []
        for _ in DataStore().names {
            if !DataStore().names.isEmpty {
                let currentName = DataStore().names.randomElement() ?? ""
                let currentSurname = DataStore().surnames.randomElement() ?? ""
                let currentPhoneNumber = DataStore().phoneNumbers.randomElement() ?? ""
                let currentEmail = DataStore().emails.randomElement() ?? ""
                peopleData.append(
                    Person(
                        name: currentName,
                        surname: currentSurname,
                        phoneNumber: currentPhoneNumber,
                        email: currentEmail
                    )
                )
                DataStore().names = DataStore().names.filter({ $0 != currentName })
                DataStore().surnames = DataStore().surnames.filter({ $0 != currentSurname })
                DataStore().phoneNumbers = DataStore().phoneNumbers.filter({ $0 != currentPhoneNumber })
                DataStore().emails = DataStore().emails.filter({ $0 != currentEmail })
            }
        }
        print(peopleData)
        return peopleData
    }
}




//Person(
//    name: names.randomElement() ?? "",
//    surname: surnames.randomElement() ?? "",
//    phoneNumber: phoneNumbers.randomElement() ?? "",
//    email: emails.randomElement() ?? ""
//)

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
        for _ in peopleData {
        if !names.isEmpty {
            let currentName = names.randomElement() ?? ""
            let currentSurname = surnames.randomElement() ?? ""
            let currentPhoneNumber = phoneNumbers.randomElement() ?? ""
            let currentEmail = emails.randomElement() ?? ""
            peopleData.append(
                Person(
                    name: currentName,
                    surname: currentSurname,
                    phoneNumber: currentPhoneNumber,
                    email: currentEmail
                )
            )
            names = names.filter({ $0 != currentName })
            surnames = surnames.filter({ $0 != currentSurname })
            phoneNumbers = phoneNumbers.filter({ $0 != currentPhoneNumber })
            emails = emails.filter({ $0 != currentEmail })
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

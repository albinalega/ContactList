//
//  PeopleData.swift
//  ContactList
//
//  Created by Альбина Лега on 18/10/2022.
//

class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Лера",
        "Женя",
        "Лена",
        "Наташа",
        "Аня",
        "Вика",
        "Маша",
        "Тамара"
    ]
    
    let surnames = [
        "Новикова",
        "Алехина",
        "Кулемина",
        "Липатова",
        "Прокопьева",
        "Прутковская",
        "Васнецова",
        "Кожемятько"
    ]
    
    let phoneNumbers = [
        "+7 (911) 954-23-54",
        "+7 (906) 943-43-56",
        "+7 (921) 943-67-43",
        "+7 (953) 433-67-86",
        "+7 (981) 576-23-12",
        "+7 (965) 564-86-23",
        "+7 (932) 123-31-47",
        "+7 (908) 631-20-24"
    ]
    
    let emails = [
        "VaLeRi@gmail.com",
        "rizayabestia@gmail.com",
        "sportislife@gmail.com",
        "sadgirl@gmail.com",
        "Milasshka@gmail.com",
        "hochyZamuzh@gmail.com",
        "mashulya@gmail.com",
        "kozemyatko.brand@gmail.com"
    ]
    
    private init() {}
}

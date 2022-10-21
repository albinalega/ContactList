//
//  SecondContactsListViewController.swift
//  ContactList
//
//  Created by Альбина Лега on 19/10/2022.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var people: [Person] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        people[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContact", for: indexPath)
        
        let person = people[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // снимаем выделение с ячейки
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

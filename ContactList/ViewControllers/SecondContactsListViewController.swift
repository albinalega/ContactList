//
//  SecondContactsListViewController.swift
//  ContactList
//
//  Created by Альбина Лега on 19/10/2022.
//

import UIKit

class SecondContactsListViewController: UITableViewController { // я доделаю завтра
    private var personList = Person.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.

    }

    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        personList.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContact", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}

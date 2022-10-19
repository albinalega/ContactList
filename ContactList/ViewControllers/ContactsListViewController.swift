//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Альбина Лега on 18/10/2022.
//

import UIKit

class ContactsListViewController: UITableViewController {
    private var personList = Person.getData()

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.person = personList[indexPath.row]
    }
}

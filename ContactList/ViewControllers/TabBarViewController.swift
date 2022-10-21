//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Альбина Лега on 21/10/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactsListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let people = Person.getContactList()
        contactListVC.people = people
        sectionVC.people = people
    }

}

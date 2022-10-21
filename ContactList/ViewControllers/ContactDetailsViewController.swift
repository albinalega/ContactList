//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Альбина Лега on 19/10/2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneNumber.text = person.phoneNumber
        email.text = person.email
    }
}

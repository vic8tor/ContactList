//
//  DetailInfoViewController.swift
//  ContactList
//
//  Created by Victor on 02.01.2022.
//

import UIKit

class DetailInfoViewController: UIViewController {

    // MARK: - @IBOutlets
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        phoneNumberLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        
    }
}

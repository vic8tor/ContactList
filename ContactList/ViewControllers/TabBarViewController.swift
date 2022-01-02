//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Victor on 02.01.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    // MARK: - Public Properties
    let persons = Person.getPerson()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        selectVC()
    }

    // MARK: - Private Methods
    private func selectVC() {
        guard let contactList = viewControllers?.first as? RandomContactListViewController else { return }
        contactList.persons = persons
    }

}

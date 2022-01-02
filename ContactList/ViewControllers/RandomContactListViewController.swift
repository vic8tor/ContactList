//
//  ViewController.swift
//  ContactList
//
//  Created by Victor on 29.12.2021.
//

import UIKit

class RandomContactListViewController: UITableViewController {


    // MARK: - @IBOutlets
    
    // MARK: - Public Properties
    var persons: [Person] = []

    
    // MARK: - Private Properties
    
    // MARK: - Initializers
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(persons.count)
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "randomCell", for: indexPath)
        let person = persons[indexPath.row]
        print(persons)
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullname
        cell.contentConfiguration = content
        
        return cell
    }
    // MARK: - @IBActions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods


}

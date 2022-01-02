//
//  ViewController.swift
//  ContactList
//
//  Created by Victor on 29.12.2021.
//

import UIKit

class RandomContactListViewController: UITableViewController {


    // MARK: - @IBOutlets
    
    // MARK: - Private Properties
    var persons: [Person] = []

    
    // MARK: - Initializers
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "randomCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullname
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailInfoVC = segue.destination as? DetailInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow  else { return }
        let person = persons[indexPath.row]
        detailInfoVC.person = person
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    

    // MARK: - Public Methods
    
    // MARK: - Private Methods


}

//
//  PersonModel.swift
//  ContactList
//
//  Created by Victor on 29.12.2021.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    var fullname: String {
        name + " " + surname
    }
}
extension Person {
    static func getPerson() -> [Person] {
        var persons = [Person]()
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()

        
        let iterations = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
            )
        
        for index in 1..<iterations {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}




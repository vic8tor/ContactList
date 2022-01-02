//
//  DataManager.swift
//  ContactList
//
//  Created by Victor on 30.12.2021.
//

class DataManager {
    
    static let shared =  DataManager()
        let names = [
            "Cristiano", "Lionel", "Zlatan", "Killian",
            "Karim", "Erling", "Timo",
            "Frank", "Michael", "Eden"
        ]
    
        let surnames = [
        "Ronaldo", "Messi", "Ibrahimovich",
        "Mbappe", "Benzema", "Haaland",
        "Werner", "Lampard", "Ballack", "Hazard"
        ]
    
        let emails = [
        "cr7@gmail.com", "leo9@gmail.com", "ibra@yahoo.com",
        "donatello@france.com", "karim9@gmail.com", "erling@mail.ru",
        "timo7@gmail.com", "captain8@mail.ru", "michael8@gmail.com",
        "eden7@yahoo.com"
        ]
    
    
        let phones = [
            "89299221288", "89999993399", "89770007775",
            "89277777777", "89999999999", "89298494948",
            "89303874977", "89888998888", "89777398877",
            "8977737777"
        ]
    
    private init() {}
}

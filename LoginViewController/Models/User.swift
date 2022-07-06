//
//  User.swift
//  LoginViewController
//
//  Created by 19333717 on 06.07.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Sergei",
            password: "12345",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Sergei", surname: "Mishchenko", image: "MyPhoto")
    }
}

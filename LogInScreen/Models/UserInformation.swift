//
//  UserInformation.swift
//  LogInScreen
//
//  Created by Денис on 14/05/2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func currentUser() -> Person {
        let person = Person(name: "John", surname: "Doe", age: 30, yearOfBirth: 1997, country: "Latvia")
        let user = User(login: "Deniss", password: "123qwerty", person: person)
        return person
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let yearOfBirth: Int
    let country: String
}


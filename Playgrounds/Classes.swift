//
//  Classes.swift
//  Playgrounds
//
//  Created by Даниил Кудрявцев on 13/10/2017.
//  Copyright © 2017 Даниил Кудрявцев. All rights reserved.
//

import Foundation

class Feedback {
    var loginOfReviewer: String
    var text: String
    var grade: Int
    init(loginOfReviewer: String, text: String, grade: Int) {
        self.loginOfReviewer = loginOfReviewer
        self.text = text
        self.grade = grade
    }
}

class Playground {
    var length, width: Int
    var rating, sumOfGrades, quantityOfGrades: Double
    var lighting, covered: Bool
    var cover, kindOfSport: String
    init (lighting: Bool, covered: Bool, cover: String, length: Int, width: Int, kindOfSport: String) {
        self.rating = 0
        self.quantityOfGrades = 0
        self.sumOfGrades = 0
        self.lighting = lighting
        self.covered = covered
        self.cover = cover
        self.length = length
        self.width = width
        self.kindOfSport = kindOfSport
    }
    func addGrade(grade: Double) {
        self.sumOfGrades += grade
        self.rating = self.sumOfGrades/self.quantityOfGrades
        self.quantityOfGrades += 1
    }
}

class User {
    
    var name, surname, login, password, phoneNumber: String
    var playgrounds = [Playground]()
    var age: Int
    init(name: String, surname: String, login: String, password: String, phoneNumber: String, age: Int) {
        self.name = name
        self.surname = surname
        self.login = login
        self.password = password
        self.phoneNumber = phoneNumber
        self.age = age
        self.playgrounds = [Playground]()
    }
    func addPlayground(playground: Playground) {
        playgrounds.append(playground)
    }
}

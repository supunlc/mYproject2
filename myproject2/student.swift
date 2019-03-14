//
//  student.swift
//  myproject2
//
//  Created by Digital-06 on 3/11/19.
//  Copyright © 2019 Digital-06. All rights reserved.
//

import Foundation

class Student {
    var name : String!
    let gender: Gender!
    var age : Int!
    var contact : Contact!
    var socialNetwork:[socialNetwork]?
    
    init(name: String,gender: Gender) {
        self.name = name
        self.gender = gender
        self.age = 0
        self.contact = nil
        self.socialNetwork = nil
        
    }
    


}

enum Gender {
    case Male
    case Female
    case unspecified
}

enum Contact {
    case Home
    case Mobile
    case unspecified
}

enum socialNetwork{
    case Url
}

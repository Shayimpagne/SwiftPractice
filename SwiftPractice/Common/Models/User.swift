//
//  User.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/12/20.
//  Copyright © 2020 lol. All rights reserved.
//

import Foundation

class User: NSObject {
    var name: String
    var age: Int
    var height: Double = 0
    var weight: Double = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

//Interface Segregation Principle
extension User: CellDataProtocol {
    var cellName: String { name }
    var cellAge: Int { age }
}

extension User: HeaderDataProtocol {
    var title: String { name }
    var subtitle: String { String(height) }
}

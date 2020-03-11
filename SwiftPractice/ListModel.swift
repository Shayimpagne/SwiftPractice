//
//  ListModel.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/11/20.
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

//ISP
extension User: CellDataProtocol {
    var cellName: String {
        name
    }
    
    var cellAge: Int {
        age
    }
    
    
}

class ListModel {
    //MARK: - Private
    private var strings = [User(name: "Max", age: 45), User(name: "Anton", age: 29), User(name: "Vlad", age: 30)]
    
    var stringsCount: Int {
        strings.count
    }
    
    func getData() -> String? {
        return strings.map({ $0.name }).randomElement()
    }
    
    func getData(for index: Int) -> User {
        return strings[index]
    }
    
}

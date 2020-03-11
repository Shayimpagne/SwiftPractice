//
//  LiskovViewController.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/10/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

class LiskovViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let animal: Animal = Dog()
        print(animal.voice())
    }

}

protocol  {
    
}

protocol BaseAnimalAction {
    func move() -> String
    func voice() -> String
}

class Animal: BaseAnimalAction {
    func move() -> String {
        return ""
    }
    
    func voice() -> String {
        return ""
    }
    
    
}


class Dog: Animal {
    override func voice() -> String {
        return "Gav gav"
    }
    
    override func move() -> String {
        return "Go"
    }
}

class Bird: Animal {
    override func voice() -> String {
        return "4irik 4irik"
    }
    
    override func move() -> String {
        return "Fly"
    }
}

//
//  SwitcherModel.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/12/20.
//  Copyright © 2020 lol. All rights reserved.
//

import Foundation
import UIKit

enum SwitcherState: Int {
    case first, second
}

class SwitcherModel {
    private var colors: [UIColor] = [.red, .green, .blue]
    
    var switcherState: SwitcherState = .first
    
    func getColor() -> UIColor? {
        switch switcherState {
        case .first:
            return colors.first
        case .second:
            return colors[1]
        }
    }
}

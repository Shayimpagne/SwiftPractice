//
//  SwitcherViewController.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/12/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

class SwitcherViewController: UIViewController {
    
    var switcherView: SwitcherView { view as! SwitcherView }
    let model = SwitcherModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        switcherView.setupColor(model.getColor(), model.switcherState)
    }
    
    

}

extension SwitcherViewController: SwitcherViewDelegate {
    func didChangeSegmentedControlValue(_ value: Int) {
        if let switcherState = SwitcherState(rawValue: value) {
            model.switcherState = switcherState
            switcherView.setupColor(model.getColor(), model.switcherState)
        }
    }
    
    
}

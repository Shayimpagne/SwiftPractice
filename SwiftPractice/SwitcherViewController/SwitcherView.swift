//
//  SwitcherView.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/12/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

@objc
protocol SwitcherViewDelegate {
    func didChangeSegmentedControlValue(_ value: Int)
}

class SwitcherView: UIView {
    
    //MARK: - Private
    @IBOutlet private weak var segmentedView: UISegmentedControl!
    @IBOutlet private weak var firstView: UIView!
    @IBOutlet private weak var secondView: UIView!
    
    
    @IBAction private func segmentedControlValueChanged(_ sender: Any) {
        guard let control = sender as? UISegmentedControl else { return }
        delegate.didChangeSegmentedControlValue(control.selectedSegmentIndex)
    }
    
    //MARK: - Public
    @IBOutlet var delegate: SwitcherViewDelegate!
    
    func setupColor(_ color: UIColor?, _ state: SwitcherState) {
        switch state {
        case .first:
            firstView.backgroundColor = color
            secondView.backgroundColor = UIColor.clear
        default:
            firstView.backgroundColor = UIColor.clear
            secondView.backgroundColor = color
        }
    }
    
}

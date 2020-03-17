//
//  ContainerView.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/17/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

@objc
protocol ContainerViewOutput {
    func didPressedFirstViewButton(from view: UIView)
    func didPressedSecondViewButton(from view: UIView)
}

@objc
protocol ContainerViewInput {
    func showFirstView()
    func showSecondView()
}

class ContainerView: UIView {
    
    @IBOutlet private weak var firstView: UIView!
    @IBOutlet private weak var secondView: UIView!

    @IBAction private func showFirstViewPressed(_ sender: Any) {
        output?.didPressedFirstViewButton(from: firstView)
    }
    
    @IBAction private func showSecondViewPressed(_ sender: Any) {
        output?.didPressedSecondViewButton(from: secondView)
    }
    
    @IBOutlet var output: ContainerViewOutput?
}

extension ContainerView: ContainerViewInput {
    func showFirstView() {
        firstView.alpha = 1
        secondView.alpha = 0
    }
    
    func showSecondView() {
        firstView.alpha = 0
        secondView.alpha = 1
    }
}


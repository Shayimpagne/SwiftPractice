//
//  ContainerViewController.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/17/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet var input: ContainerViewInput?
    var viewControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        viewControllers.forEach({ $0.view.frame = $0.view.superview?.bounds ?? CGRect.zero })
    }
    
    func addController(_ viewController: UIViewController, to view: UIView) {
        addChild(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
}

extension ContainerViewController: ContainerViewOutput {
    func didPressedFirstViewButton(from view: UIView) {
        viewControllers.removeAll()
        addController(ListViewController(), to: view)
        input?.showFirstView()
    }
    
    func didPressedSecondViewButton(from view: UIView) {
        viewControllers.removeAll()
        addController(SwitcherViewController(), to: view)
        input?.showSecondView()
    }
    
}

//
//  HeaderView.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/12/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

protocol HeaderDataProtocol {
    var title: String { get }
    var subtitle: String { get }
}

class HeaderView: UIView {

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subtitleLabel: UILabel!

    func setupHeader(with data: HeaderDataProtocol) {
        titleLabel.text = data.title
        subtitleLabel.text = data.subtitle
    }

}

//
//  ListView.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/11/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

@objc
protocol CellDataProtocol {
    var cellName: String { get }
    var cellAge: Int { get }
}

@objc
protocol ListViewDelegate {
    func listButtonDidPressed()
    func numberOfRowsInSection(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    func rowData(indexPath: IndexPath) -> CellDataProtocol
}

class ListView: UIView {
    //MARK: - Private
    @IBOutlet private weak var listButton: UIButton!
    @IBOutlet private weak var listLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableViewCell")
        }
    }
    
    @IBAction private func listButtonPressed(_ sender: Any) {
        delegate.listButtonDidPressed()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Public
    @IBOutlet var delegate: ListViewDelegate!
    
    //MARK: Properties
    var labelTitle: String? {
        get {
            listLabel.text
        }
        
        set {
            listLabel.text = newValue
        }
    }
    
    
}

extension ListView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.numberOfRowsInSection(tableView, numberOfRowsInSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        let user = delegate.rowData(indexPath: indexPath)
        cell.textLabel?.text = user.cellName + " " + String(user.cellAge)
        return cell
    }
    
    
}

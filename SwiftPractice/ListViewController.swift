//
//  ListViewController.swift
//  SwiftPractice
//
//  Created by Emir Shayymov on 3/11/20.
//  Copyright © 2020 lol. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var listView: ListView { view as! ListView }
    var listModel: ListModel = ListModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}

extension ListViewController: ListViewDelegate {
    func rowData(indexPath: IndexPath) -> CellDataProtocol {
        let row = indexPath.row
        return listModel.getData(for: row)
    }
    
    func numberOfRowsInSection(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listModel.stringsCount
    }
    
    func listButtonDidPressed() {
        listView.labelTitle = listModel.getData()
    }
    
    
}

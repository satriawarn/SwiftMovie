//
//  MainViewController+TableView.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import Foundation
import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    
    func setupTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.backgroundColor = .clear
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
    
}

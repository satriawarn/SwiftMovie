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
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.tableView.backgroundColor = .clear
        
        registerCells()
    }
    
    func registerCells(){
        tableView.register(MainMovieCell.register(), forCellReuseIdentifier: MainMovieCell.identifier)
    }
    
    func reloadTableView(){
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainMovieCell.identifier, for: indexPath) as? MainMovieCell else {
            return UITableViewCell()
        }
        
        let cellViewModel = cellDataSource[indexPath.row]
        cell.setupCell(viewModel: cellViewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieId = cellDataSource[indexPath.row].id
        
        self.openDetail(movieId: movieId)
    }
}

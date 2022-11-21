//
//  MainViewController.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var tableView: UITableView!
    
    //MARK: ViewModel goes here
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }

    func configView(){
        title = "Main View"
        
        setupTableView()
    }
}

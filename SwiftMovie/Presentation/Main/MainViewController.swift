//
//  MainViewController.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import UIKit

class MainViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }

    func configView(){
        title = "Main View"
        
        setupTableView()
    }
}

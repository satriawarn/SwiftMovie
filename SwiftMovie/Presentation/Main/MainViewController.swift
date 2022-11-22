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
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    //MARK: ViewModel goes here
    var viewModel: MainViewModel = MainViewModel()
    
    //MARK: variables
    var cellDataSource: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
        bindVieModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }

    func configView(){
        title = "Trending Movies"
        
        setupTableView()
    }
    
    func bindVieModel(){
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else {
                return
            }
            
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
}

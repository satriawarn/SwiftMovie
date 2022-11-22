//
//  DetailMovieViewController.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 22/11/22.
//

import UIKit

class DetailMovieViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    //MARK: viewModel
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView(){
        
    }

}

//
//  MainMovieCellTableViewCell.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 22/11/22.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {
    
    //MARK: registering the cell
    public static var identifier: String {
        get {
            return "MainMovieCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }

    //MARK: IBoutlets
    @IBOutlet var backView: UIView!
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var rating: UILabel!
    @IBOutlet var releaseDate: UILabel!
    @IBOutlet var movieTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.addBorder(color: .label, width: 1)
        backView.round()
        backView.backgroundColor = .lightGray
        
        
        movieImageView.round()
    }
    
    func setupCell(viewModel: MovieTableCellViewModel){
        self.movieTitle.text = viewModel.title
        self.releaseDate.text = viewModel.date
        self.rating.text = viewModel.rating
        self.movieImageView.sd_setImage(with: viewModel.imageUrl)
    }
    
}

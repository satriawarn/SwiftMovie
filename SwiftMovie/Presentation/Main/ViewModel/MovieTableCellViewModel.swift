//
//  MovieTableCellViewModel.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 22/11/22.
//

import Foundation

//MARK: all the logic to show the data in table view cell
class MovieTableCellViewModel {
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    init(movie: Movie){
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.rating = "\(movie.voteAverage)/10"
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.imageUrl = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageUrl)\(imageCode)")
    }
}

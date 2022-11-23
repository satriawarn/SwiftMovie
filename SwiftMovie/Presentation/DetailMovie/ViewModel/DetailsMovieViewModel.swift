//
//  DetailsMovieViewModel.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 22/11/22.
//

import Foundation

class DetailsMovieViewModel {
    
    var movie: Movie
    
    var movieId: Int
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    
    init(movie: Movie){
        self.movie = movie
        
        self.movieId = movie.id
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageUrl)\(imageCode)")
    }
}

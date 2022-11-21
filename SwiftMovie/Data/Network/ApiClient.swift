//
//  MovieAPI.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import Foundation

class NetworkConstant {
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init(){
        //MARK: Singleton
    }
    
    public var apiKey: String {
        get{
            return "022836d378dd25e7d064b78034991927"
        }
    }
    
    public var baseUrl: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageUrl: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}

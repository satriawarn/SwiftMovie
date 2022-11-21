//
//  ApiService.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class ApiService{
    static func getTrendingMovies(
        completionHandler: @escaping (_ result: Result<Movies, NetworkError>) -> Void) {
            
            let urlString = NetworkConstant.shared.baseUrl + "trending/all/day?api_key=" +
            NetworkConstant.shared.apiKey
            
            //MARK: handle api error -
            guard let url = URL(string: urlString) else {
                completionHandler(.failure(.urlError))
                return
            }
            
            //MARK: this is calling api (,) in if means or-
            URLSession.shared.dataTask(with: url) {
                dataResponse, urlResponse, error in
                if error == nil,
                   let data = dataResponse,
                   let resultData = try? JSONDecoder().decode(
                    Movies.self, from: data) {
                    completionHandler(.success(resultData))
                } else {
                    completionHandler(.failure(.canNotParseData))
                }
            }.resume()
        }
}

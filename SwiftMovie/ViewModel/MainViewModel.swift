//
//  MainViewModel.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import Foundation

class MainViewModel {
    
    func numberOfSection() -> Int{
        1
    }
    
    func numberOfRows(in section: Int) -> Int{
        5
    }
    
    func getData(){
        ApiService.getTrendingMovies { result in
            switch result {
            case .success(let data):
                print("top trending count \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
}

//
//  MainViewModel.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 21/11/22.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false)
    //MARK: presenting our data and called inside main controller
    var cellDataSource: Observable<[MovieTableCellViewModel]> = Observable(nil)
    var dataSource: Movies?
    
    func numberOfSection() -> Int{
        1
    }
    
    func numberOfRows(in section: Int) -> Int{
        self.dataSource?.results.count ?? 0
    }
    
    func getData(){
        if isLoading.value ?? true {
            return
        }
        isLoading.value = true
        ApiService.getTrendingMovies { [weak self] result in
            self?.isLoading.value = false
            
            switch result {
            case .success(let data):
                print("top trending count \(data.results.count)")
                self?.dataSource = data
                self?.mapCellData()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func mapCellData(){
        self.cellDataSource.value = self.dataSource?.results.compactMap({
            MovieTableCellViewModel(movie: $0)
        })
    }
    
    func getMovieTitle(_ movie: Movie) -> String {
        return movie.title ?? movie.name ?? ""
    }
}

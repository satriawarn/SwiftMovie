//
//  Observable.swift
//  SwiftMovie
//
//  Created by MTMAC51 on 22/11/22.
//

import Foundation

class Observable<T> {
    /*
     MARK: when somtheing change it will call own listener
     and the listener will update the value whatever it called
     where it call? inside the bind
    */
    
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    
    init(_ value: T?){
        self.value = value
    }
    
    private var listener: ((T?) -> Void)?
    
    func bind(_ listener: @escaping ((T?) -> Void)){
        listener(value)
        self.listener = listener
    }
}

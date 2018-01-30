//
//  DownLoadAllHeroesInteractorRealImplementation.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

class DownLoadAllHeroesInteractorRealImplementation : DownloadAllHeroesInteractorProtocol{
    func executeDownload(onSuccess: @escaping (Heroes) -> Void, onError: onErrorClosure) {
        let apiURLString = "https://api.myjson.com/bins/bvyob"
        
        let queue = OperationQueue()
        
        queue.addOperation {
            if let urlAPIHeroes = URL(string: apiURLString),
                let dataHero = NSData(contentsOf: urlAPIHeroes){
                
                let heroes = parseHeroes(data: dataHero as Data)
                
                OperationQueue.main.addOperation {
                    onSuccess(heroes)
                }
                
            }
            
        }
        
    }
    
    func executeDownload(onSuccess: @escaping (Heroes) -> Void) {
        executeDownload(onSuccess: onSuccess, onError: nil)
    }
}






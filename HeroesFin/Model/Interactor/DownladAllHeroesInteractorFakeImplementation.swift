//
//  DownladAllHeroesInteractorFakeImplementation.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

final class DownladAllHeroesInteractorFakeImplementation : DownloadAllHeroesInteractorProtocol{
    func executeDownload(onSuccess: @escaping (Heroes) -> Void) {
        executeDownload(onSuccess: onSuccess, onError: nil)
    }
    
    func executeDownload(onSuccess: @escaping (Heroes) -> Void, onError: onErrorClosure) {
        let heroes = Heroes()
        
        for i in 0...10 {
            let hero = Hero(name: "Hero \(i)", photo: "Hero \(i)", realName: "Hero \(i)", height: "Hero \(i)", power: "Hero \(i)", abilities: "Hero\(i)", groups: ["Avengers"])
            heroes.add(hero: hero)
        }
        
        OperationQueue.main.addOperation {
            onSuccess(heroes)
        }
        
    }
    
}

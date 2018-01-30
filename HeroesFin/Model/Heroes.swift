//
//  Heroes.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

protocol HeroesProtocol {
    func count() -> Int
    func add (hero: Hero)
    func get(index: Int) -> Hero
    func delete(index : Int)
}

final class Heroes : HeroesProtocol{
    
    private var heroesList : [Hero]?
    
    public init(){
        self.heroesList = []
    }
}

extension Heroes {
    func count() -> Int {
        return (heroesList?.count)!
    }
}

extension Heroes {
    func add(hero: Hero) {
        heroesList?.append(hero)
    }
}

extension Heroes{
    func get(index: Int) -> Hero {
        return heroesList![index]
    }
}

extension Heroes{
    func delete(index: Int) {
        heroesList?.remove(at: index)
    }
}






















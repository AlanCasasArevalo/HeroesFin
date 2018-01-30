//
//  Hero.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

final class Hero {
    
    let name:String
    let photo: String
    let realName: String
    let height: Double
    let power: String
    let abilities: String
    let groups: [String]
    
    init(name:String,
         photo: String,
         realName: String,
         height: Double,
         power: String,
         abilities: String,
         groups: [String]) {
        (self.name, self.photo, self.realName, self.height, self.power, self.abilities, self.groups) =
            (name, photo, realName, height, power, abilities, groups)
    }
}

extension Hero {
    var fullName : String {
        return "\(name) \(realName)"
    }
}












































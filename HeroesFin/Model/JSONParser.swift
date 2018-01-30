//
//  JSONParser.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

func parseHeroes(data: Data) -> Heroes {
    let heroes = Heroes()
    
    do {
        
        let jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! Dictionary<String, Any>
        let result = jsonObject["superheroes"] as! [Dictionary<String,Any>]
        
        for heroJSON in result{
            let hero = Hero(name: heroJSON["name"] as! String ,
                            photo: heroJSON["photo"] as! String,
                            realName: heroJSON["realName"] as! String,
                            height: heroJSON["height"] as! String,
                            power: heroJSON["power"] as! String,
                            abilities: heroJSON["abilities"] as! String,
                            groups: [heroJSON["groups"]] as! [String])
            
            heroes.add(hero: hero)
        }
        
    } catch  {
        
        // TODO: Hacer algo con el catch
        print("Error")
    }
    
    return heroes
    
}



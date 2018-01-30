//
//  CollectionViewCell.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class HeroCell: UICollectionViewCell {
    var hero : Hero?
    
    @IBOutlet weak var heroPhotoUIImageView: UIImageView!
    
    @IBOutlet weak var heroNameTextLabel: UILabel!
    
    @IBOutlet weak var heroRealNameTextLabel: UILabel!
    
    func refreshHero(hero: Hero){
        self.hero = hero
        self.heroNameTextLabel.text = hero.name
    }

}

//
//  MainViewController+UITableViewController.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let heroes = self.heroes{
            return heroes.count()
        }
        return 0

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let heroToCell = self.heroes?.get(index: indexPath.row)
        
        let cell : HeroCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HeroCell
        
        cell.heroPhotoUIImageView.layer.cornerRadius = 5
        cell.heroPhotoUIImageView.clipsToBounds = true
        
        
        cell.refreshHero(hero: heroToCell!)
        
        return cell
    }
}

extension MainViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "heroShowDetail"{
            let vc = segue.destination as! HeroDetailController
            let indexPath = heroesCollectionView.indexPathsForSelectedItems![0]
            let heroToShow = heroes?.get(index: indexPath.row)
            vc.hero = heroToShow
        }
    }
}

























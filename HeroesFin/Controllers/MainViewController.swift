//
//  ViewController.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let reuseIdentifier = "HeroCell"
    var heroes : Heroes?
    
    @IBOutlet weak var heroesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let downloadHeroesInteractor: DownloadAllHeroesInteractorProtocol = DownladAllHeroesInteractorFakeImplementation()
        
        downloadHeroesInteractor.executeDownload(onSuccess: { (heroes) in
            // TODO: Hacer implementacion
            print(heroes.get(index: 0).name)
            print(heroes.count())
            self.heroes = heroes

            self.heroesCollectionView.delegate = self
            self.heroesCollectionView.dataSource = self

        }) { (error) in
            // TODO: Enviar notificacion al usuario con una alerta
            print(error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}






























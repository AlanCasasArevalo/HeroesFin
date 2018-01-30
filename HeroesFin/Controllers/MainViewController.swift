//
//  ViewController.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    private let reuseIdentifier = "HeroCell"
    var heroes : Heroes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let downloadHeroesInteractor: DownloadAllHeroesInteractorProtocol = DownladAllHeroesInteractorFakeImplementation()
        
        downloadHeroesInteractor.executeDownload(onSuccess: { (heroes) in
            // TODO: Hacer implementacion
            print(heroes.get(index: 0).name)
            print(heroes.count())
            self.heroes = heroes
            
        }) { (error) in
            // TODO: Enviar notificacion al usuario con una alerta
            print(error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}






























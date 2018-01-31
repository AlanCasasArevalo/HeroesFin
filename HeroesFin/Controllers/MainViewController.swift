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
    var isInternetOff = false
    
    @IBOutlet weak var heroesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkInternetConection()
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 202, green: 165, blue: 26)
        
        let downloadHeroesInteractor: DownloadAllHeroesInteractorProtocol = DownLoadAllHeroesInteractorRealImplementation()
        
        downloadHeroesInteractor.executeDownload(onSuccess: { (heroes) in
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

extension MainViewController{
    func checkInternetConection(){
        if !Reachability.isConnectedToNetwork(){
            alertControllerToView(message: "Necesita tener acceso a internet para poder acceder al menos una vez a los datos.")
        }else{
            isInternetOff = true
        }
    }
}


// MARK: - UIColor Extension
extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}



























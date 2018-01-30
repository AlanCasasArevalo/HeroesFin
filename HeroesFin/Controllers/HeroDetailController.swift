//
//  HeroDetailController.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class HeroDetailController: UIViewController {

    var hero: Hero?
    
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameTextLabel: UILabel!
    @IBOutlet weak var heroHeightTextLabel: UILabel!
    @IBOutlet weak var heroPowerTextLabel: UILabel!
    @IBOutlet weak var heroAbilitiesTextLabel: UILabel!
    @IBOutlet weak var heroGroupsTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = hero?.realName
        
        heroNameTextLabel.text = hero?.name
        heroHeightTextLabel.text = hero?.height
        heroPowerTextLabel.text = hero?.power
        heroAbilitiesTextLabel.text = hero?.abilities
//        heroGroupsTextLabel.text = hero?.groups
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

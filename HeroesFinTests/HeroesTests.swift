//
//  HeroesFinTests.swift
//  HeroesFinTests
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import XCTest
@testable import HeroesFin

class HeroesTest: XCTestCase {
    var spiderman: Hero!
    var sut: Heroes!
    override func setUp() {
        super.setUp()
        spiderman = Hero(name: "Spiderman", photo: "photo", realName: "Peter", height: 1.77, power: "dk", abilities: "dk", groups: [""])
        sut = Heroes()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testsHeroesExistence() {
        let heroes = Heroes()
        
        XCTAssertNotNil(heroes)
    }
    
    func testsGivenAHeroAddToHeroes(){
        sut.add(hero: spiderman)
        XCTAssertEqual(sut.count(), 1)
    }
    
    func testsGivenTwoHeroesDeleteOne(){
        sut.add(hero: spiderman)
        XCTAssertEqual(sut.count(), 1)
        sut.add(hero: spiderman)
        XCTAssertEqual(sut.count(), 2)
        sut.delete(index: 1)
        XCTAssertEqual(sut.count(), 1)
    }
    
}


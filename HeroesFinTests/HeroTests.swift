//
//  HeroTests.swift
//  HeroesFinTests
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import XCTest
@testable import HeroesFin

class HeroTests: XCTestCase {
    
    var spiderman: Hero!
    
    override func setUp() {
        spiderman = Hero(name: "Spiderman", photo: "photo", realName: "Peter", height: 1.77, power: "dk", abilities: "dk", groups: [""])
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
    }
    
    func testHeroExistence()  {
        XCTAssertNotNil(spiderman)
    }
    
    func testHeroFullName() {
        XCTAssertEqual(spiderman.fullName, "Spiderman Peter")
    }
    
}


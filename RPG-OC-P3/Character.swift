//
//  Character.swift
//  RPG-OC-P3
//
//  Created by Macbook on 03/11/2019.
//  Copyright © 2019 LMH974. All rights reserved.
//

import Foundation

class Character {
    let name: String
    var lifePoints = 100
    var weapon = [Axe(), Bazouka(), Knife(),Sword(),dynamite()].randomElement()!
    
    init(name: String) {
        self.name = name
    }
}

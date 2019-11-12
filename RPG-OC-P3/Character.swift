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
    let lifePoints: Int
    let weapon: Weapon
    
    init(name: String, lifePoints: Int, weapon: Weapon) {
        self.name = name
        self.lifePoints = lifePoints
        self.weapon = weapon
    }
}

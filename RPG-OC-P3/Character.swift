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
    let lifePoints = 200
    let weapon = [Axe(), Bazouka(), Knife()].randomElement()!
    
    init(name: String) {
        self.name = name
    }
}

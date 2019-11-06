//
//  Characters.swift
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
    var damages: damages
    
   
    init(name: String, lifePoints: Int, weapon: Weapon, damages: String ) {
        self.name = name
        self.lifePoints = lifePoints
        self.weapon = weapon
        self.damages = damages
    }
    
}

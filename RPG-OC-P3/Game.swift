//
//  Game.swift
//  RPG-OC-P3
//
//  Created by Macbook on 03/11/2019.
//  Copyright © 2019 LMH974. All rights reserved.
//

import Foundation

class Game {
    let player1: Player
    let player2: Player
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
        startGame() // initialiser le début de la partie
        print("Game - init")
    }
    
    func startGame() {
        print("Game - startGame")
        //print("construire équipe 1")
        print("team 1")
        player1.playerBuilding()
        //print("construire équipe 2")
        print("team 2")
        // player2.playerBuilding()
        
    }
}

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
        print("the good, the bad and the ugly")
        player1.playerBuilding()
        print("La Casa del papel")
        player2.playerBuilding()
        
        print(player1.playerName)
        print(player1.playerMembers[0].name)
        print(player1.playerMembers[0].lifePoints)
        print(player1.playerMembers[0].weapon.name)
        print(player1.playerMembers[0].weapon.damage)
        
        print(player1.playerName)
        print(player1.playerMembers[1].name)
        print(player1.playerMembers[1].lifePoints)
        print(player1.playerMembers[1].weapon.name)
        print(player1.playerMembers[1].weapon.damage)
        
        print(player1.playerName)
        print(player1.playerMembers[2].name)
        print(player1.playerMembers[2].lifePoints)
        print(player1.playerMembers[2].weapon.name)
        print(player1.playerMembers[2].weapon.damage)
        
        
        //print("construire équipe 2")
        print("team 2")
        player2.playerBuilding()
        print(player2.playerName)
        print(player2.playerMembers[0].name)
        print(player2.playerMembers[0].lifePoints )
        print(player2.playerMembers[0].weapon.name)
        print(player2.playerMembers[0].weapon.damage)
        
        print(player2.playerName)
        print(player2.playerMembers[1].name)
        print(player2.playerMembers[1].lifePoints )
        print(player2.playerMembers[1].weapon.name)
        print(player2.playerMembers[1].weapon.damage)
        
        print(player2.playerName)
        print(player2.playerMembers[2].name)
        print(player2.playerMembers[2].lifePoints)
        print(player2.playerMembers[2].weapon.name)
        print(player2.playerMembers[2].weapon.damage)
        //print(player2.playerMembers[0].name)
        // player2.playerBuilding()
        
    }
}

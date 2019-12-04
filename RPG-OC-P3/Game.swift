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
        player1.makeTeam()
        player2.makeTeam()
        
    }
    func battle() {  // la bataille se termine quand tous les personnages d'une équipes sont morts
        // print("Bataille")
        print("Bataille")
        var teamDead = true
        repeat {
            
            var i = 0
            i += 1
            print("Bataille  \(i)")
            if i > 3 { teamDead = !teamDead }
            
        }
        while (!teamDead)
        //
        //   finalPresentation() //
    }
}

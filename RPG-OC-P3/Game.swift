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
        presentationBeforeBattle()
        presentationBeforeBattle2()
        presentationLifePoints()
        presentationLifePoints2()
        battle()
    }
    func presentationBeforeBattle() {
        print("\n\(player1.name) dispose des personnages suivants : ")
        for character in player1.team {
            print("Personnage \(character.name)")
        }
    }
    func presentationBeforeBattle2() {
        print("\n\(player2.name) dispose des personnages suivants : ")
        for character in player2.team {
            print("Personnage \(character.name)")
        }
    }
    func presentationLifePoints() {
        print("\n\(player1.name) dispose de 200 points : ")
        for character in player1.team {
            print("Personnage \(character.name)")
        }
    }
    func presentationLifePoints2() {
        print("\n\(player2.name) dispose de 200 points : ")
        for character in player2.team {
            print("Personnage \(character.name)")
        }
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

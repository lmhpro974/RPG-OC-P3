//
//   Player.swift
//   RPG-OC-P3
//
//   Créé par Macbook le 03/11/2019.
//   Copyright © 2019 LMH974. Tous les droits sont réservés.
//
import Foundation

class  Player {
    var playerName: String = ""
    var playerMembers = [Character]()
    // le tableau est une variable statique, il est commun à 2 équipes (joueurs)
    static  var allCharNames = [ String ]()
    
    func  playerBuilding () { // construire 2 équipes de 3 personnages
        // tant que je n'ai pas 3 joueurs, je crée un joueur
        print (" Player - playerBuilding ")
        playerName = "the good, the bad and the ugly"
        playerMembers = [
            Character(name: "Blondin" , lifePoints: 200, weapon: Axe()),
            Character(name: "Sentenza" , lifePoints: 150, weapon: Knife()),
            Character(name: "Tuco" , lifePoints: 100, weapon: Bazouka())
        ]
    }
}
//
//   Player.swift
//   RPG-OC-P3
//
//   Créé par Macbook le 03/11/2019.
//   Copyright © 2019 LMH974. Tous les droits sont réservés.
//
import Foundation

class Player {
    let name: String
    let team = [Character]()
    // le tableau est une variable statique, il est commun à 2 équipes (joueurs)
    static var allCharNames = [String]()
    
    init(name: String) {
        self.name = name
    }
}

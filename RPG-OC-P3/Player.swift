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
    var team = [Character]()
    // le tableau est une variable statique, il est commun à 2 équipes (joueurs)
    static var allCharNames = [String]()
    
    init(name: String) {
        self.name = name
    }
    
    func makeTeam() {
        while team.count < 3 {
            print("Quel est le nom de votre personnage \(team.count + 1) de \(name) ?")
            if let characterName = readLine(), characterName != "", checkIfNameIsAbsent(name: characterName) {
                let character = Character(name: characterName)
                team.append(character)
                print("Le personnage \(characterName) est bien ajouté")
            } else {
                print("Le nom du personnage existe déjà dans une des 2 équipes")
            }
        }
    }
    
    func checkIfNameIsAbsent(name: String) -> Bool {
        if Player.allCharNames.contains(name) {
            return false
        } else {
            Player.allCharNames.append(name)
        }
        return true
    }
}

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
            print("Quel est le nom de votre personnage ?")
            if let name = readLine(), name != "", checkIfNameIsAbsent(name: name) {
                let character = Character(name: name)
                team.append(character)
                print("Le personnage \(name) est bien ajouté")
            } else {
                print("Le nom du personnage que vous venez d'entrez est incorrect")
            }
        }
        for c in team {
            print("   \(c.name)")
        }
    }
    func checkIfNameIsAbsent(name: String) -> Bool {
        for character in team {
            if character.name == name {
                return false
                
            }
        }
        return true
    }
}

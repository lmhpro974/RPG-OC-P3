//
//   Player.swift
//   RPG-OC-P3
//
//   Créé par Macbook le 03/11/2019.
//   Copyright © 2019 LMH974. Tous les droits sont réservés.
//
import Foundation
/*Class "Player" which defines the name of the character and the number of points.
 Class "Joueur " qui défini le nom du personnage son nombre de points */
 class Player {
    let name: String
    var team = [Character]()
    var teamLifePoints = 300
/*the board is a static variable, it is common to 2 teams (players)
 le tableau est une variable statique, il est commun à 2 équipes (joueurs)
 */
    static var allCharNames = [String]()
    
    init(name: String) {
        self.name = name
    }
    
    func makeTeam() {
        print()
        while team.count < 3 {
            print("Quel est le nom de votre personnage \(team.count + 1) de \(name) ?")
            if let characterName = readLine(), characterName != "", characterName != " ", checkIfNameIsAbsent(name: characterName) {
                let character = Character(name: characterName)
                team.append(character)
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
    
    func listCharactersOfPlayer(player: Player) {
        var c: Int = 0
        var nbAlive: Int = 0
        var status: String = "ALIVE"
        
        for character in player.team {
            if character.lifePoints > 0 {
                status = "ALIVE"
                nbAlive += 1
            } else {
                status = "DEAD"
            }
            print("\(c+1) Nom : \(character.name) Arme : \(character.weapon.name) Points de vie : \(character.lifePoints) - \(status)")
            c += 1
        }
    }
}

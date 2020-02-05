//
//  Game.swift
//  RPG-OC-P3
//
//  Created by Macbook on 03/11/2019.
//  Copyright © 2019 LMH974. All rights reserved.
//
import Foundation
var reply: String = ""

class Game {
    let player1: Player
    let player2: Player
    var isTeamDead = false
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
        startGame() // initialiser le début de la partie
        
    }
    func startGame() {
        print("\nSaisie des personnages Joueur 1♤🕵🏽‍♂️")
        player1.makeTeam()
        print("\nSaisie des personnages Joueur 2♡👮🏼‍♀️")
        player2.makeTeam()
        presentationBeforeBattle()
        battle()
        presentationAfterBattle()
    }
    func presentationBeforeBattle() {
        var c = 0
        print("\n\(player1.name) dispose des personnages suivants : ")
        
        for character in player1.team {
            c += 1
            print("\(c) Personnage \(character.name) avec \(character.lifePoints) points de vie dont l'arme est : \(character.weapon.name) avec \(character.weapon.damage) dégats ")
        }
        print("\n\(player2.name) dispose des personnages suivants : ")
        c = 0
        for character in player2.team {
            c += 1
            print("\(c) Personnage \(character.name) avec \(character.lifePoints) points de vie dont l'arme est : \(character.weapon.name) avec \(character.weapon.damage) dégats ")
        }
    }
    
    func presentationAfterBattle() {
        print("Partie terminée")
    }
    
    func battle() {
        var totalDefender = 0
        var totalAttacker = 0
        var characterIsDead = false
        var attacker = player2  // je peux forcer l'optionelle parce que reply = 1 2 ou 3
        var defender = player1// je peux forcer l'optionelle parce que reply = 1 2 ou 3
        repeat {
            swap(&attacker, &defender)
            // 1 choix d'un personnage du joueur qui va commencer ( attaque ou soigne)
            print("\n\(attacker.name)  attaque ")
            print("\nEntrez le numero du personnage (1 2 ou 3) qui doit commencer l'action:")
            
            attacker.listCharactersOfPlayer(player: attacker)
            var indexAttacker = 0
            repeat {
                repeat { reply = readLine() ?? "1"} while (reply != "1" && reply != "2" && reply != "3")
                indexAttacker = Int(reply)! - 1
                if canChangeWeapon(){
                    attacker.team[indexAttacker] = chestbox(character: attacker.team[indexAttacker])
                }
                characterIsDead = false
                if attacker.team[indexAttacker].lifePoints <= 0 {
                    characterIsDead = true
                    print("le personnage n'a plus de point, en choisir un autre")
                }
            }
                while characterIsDead
            // 2 coffre random (O/N)
            //        si coffre alors changer l'arme du joueur qui commence sinon rien
            // 3 choix de l'action : attaque ou soin
            print("\nEntrez l'action voulue : 1 Attaquer  2 Soigner ")
            repeat { reply = readLine() ?? "1"  } while (reply != "1" && reply != "2")
            if reply == "1" {
                //print("attaque")
                // faire une fonction attackCharacterPlayer(player2)
                print("\n\(defender.name)  en défense ")
                print("\nEntrez le numero du personnage (1 2 ou 3) qui reçoit l'attaque:")
                //let defender = player2// je peux forcer l'optionelle parce que reply = 1 2 ou 3
                defender.listCharactersOfPlayer(player: defender)
                repeat { reply = readLine() ?? "1"} while (reply != "1" && reply != "2" && reply != "3")
                
                teamAttack(attacker: attacker, indexAttacker: indexAttacker, indexDefender: Int(reply)!-1 , defender: defender)
                // Si le total des points de vie du joueur attaqué est < 0 alors la partie est finie
                //var c = 0
                totalDefender = totalizePoints(player: defender)
                totalAttacker = totalizePoints(player: attacker)
                if totalDefender <= 0 {
                    isTeamDead = true
                }
                print("\nles personnages du joueur :  \(attacker.name) totalisent \(totalAttacker) points")
                print("les personnages du joueur :  \(defender.name) totalisent \(totalDefender) points")
            } else {
                print("l'action de soin est en cours de développement")
            }
            
            // swap(&attacker, &defender)
        }
            while totalDefender > 0
    }
    func canChangeWeapon() -> Bool {
        
        return arc4random_uniform(1) == 0
        
    }
    func chestbox(character: Character) -> Character {
        print()
        print(" 🎲🎲🎲🎲🎲⛑🥺😃 Tirage aléatoire dans la magicBox 😃🥺⛑ 🎲🎲🎲🎲🎲" )
        let weapon = [Axe(), Bazouka(), Knife(), Sword(), dynamite()].randomElement()!
        character.weapon = weapon
        print(" Personnage \(character.name) avec \(character.lifePoints) points de vie dont l'arme est : \(character.weapon.name) avec \(character.weapon.damage) dégats ")
        return character
    } // end chestbox
    func teamAttack(attacker: Player, indexAttacker: Int ,indexDefender: Int ,defender: Player) {
        let attacker = attacker
        let defender = defender
        defender.team[indexDefender].lifePoints -= attacker.team[indexAttacker].weapon.damage
        if defender.team[indexDefender].lifePoints < 0 {
            defender.team[indexDefender].lifePoints = 0
        }
        print("le personnage \(attacker.team[indexAttacker].name) \(attacker.team[indexAttacker].lifePoints) pts,  attaque \(defender.team[indexDefender].name) \(attacker.team[indexAttacker].lifePoints) pts avec une arme \(attacker.team[indexAttacker].weapon.name) qui produit \(attacker.team[indexAttacker].weapon.damage) dégats")
        //
        print("Il reste \(defender.team[indexDefender].lifePoints) points au personnage \(defender.team[indexDefender].name)")
        if defender.team[indexDefender].lifePoints <= 0 {
            print("le personnage \(defender.team[indexDefender].name) sort du jeu ")
        }
        // }
        // while (attacker.teamLifePoints > 0 || defender.teamLifePoints > 0)
        
        if defender.teamLifePoints < 0 {
            isTeamDead = true
            
            print(" JEU TERMINE") }
        //swap(&attacker, &defender)
    }
    
    func totalizePoints(player: Player)-> Int {
        var totpts = 0
        for characters in player.team {
            totpts = totpts + characters.lifePoints
        }
        // print("\(player.name) \(totpts)")
        return totpts
    }
}



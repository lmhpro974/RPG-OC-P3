//
//  main.swift
//  RPG-OC-P3
//
//  Created by Macbook on 03/11/2019.
//  Copyright © 2019 LMH974. All rights reserved.
//
import Foundation

print("⚜️⚔️⚜️⚔️⚜️⚔️⚜️  JEU DE ROLE P3 ⚜️⚔️⚜️⚔️⚜️⚔️⚜️")
let namePlayer1 = "joueur 1🥵"
let namePlayer2 = "joueur 2😤"
let player1 = Player(name: namePlayer1)
let player2 = Player(name: namePlayer2)

let currentGame = Game.init(player1: player1, player2: player2)
// jouer

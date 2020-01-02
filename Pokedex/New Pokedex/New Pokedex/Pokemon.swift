//
//  Pokemon.swift
//  New Pokedex
//
//  Created by Andrew Freitas on 12/29/19.
//  Copyright © 2019 Andrew Freitas. All rights reserved.
//

import UIKit

public class Pokemon{
    
    var number: Int
    var name: String
    var typeOne: String
    var typeTwo: String
    var totalStats: Int
    var health: Int
    var attack: Int
    var defense: Int
    var sAttack: Int
    var sDefense: Int
    var speed: Int
    var generation: Int
    var legendary: String
    var pokeImage: UIImageView
    
    init(number: Int, name: String, typeOne: String, typeTwo: String, totalStats: Int, health: Int, attack: Int, defense: Int, sAttack: Int, sDefense: Int, speed: Int, generation: Int, legendary: String, pokeImage: UIImageView){
        self.number = number
        self.name = name
        self.typeOne = typeOne
        self.typeTwo = typeTwo
        self.totalStats = totalStats
        self.health = health
        self.attack = attack
        self.defense = defense
        self.sAttack = sAttack
        self.sDefense = sDefense
        self.speed = speed
        self.generation = generation
        self.legendary = legendary
        self.pokeImage = pokeImage
    }
    
}

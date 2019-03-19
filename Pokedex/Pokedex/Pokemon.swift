//
//  File.swift
//  Pokedex
//
//  Created by Andrew Freitas on 2/17/19.
//  Copyright © 2019 Andrew Freitas. All rights reserved.
//

import Foundation
import UIKit

public class Pokemon {
    var number: Int
    var name: String
    var type1: String
    var type2: String
    var total: Int
    var hp: Int
    var attack: Int
    var defense: Int
    var sAttack: Int
    var sDefense: Int
    var speed: Int
    var generation: Int
    var legend: String
    //var imageStr:String
    var image: UIImageView
    
    
    init(number: Int, name: String, type1: String, type2: String, total: Int, hp: Int, attack: Int, defense: Int, sAttack: Int, sDefense: Int, speed: Int, generation: Int, legend: String, image: UIImageView){
        self.number = number;
        self.name = name;
        self.type1 = type1;
        self.type2 = type2;
        self.total = total;
        self.hp = hp;
        self.attack = attack;
        self.defense = defense;
        self.sAttack = sAttack;
        self.sDefense = sDefense;
        self.speed = speed;
        self.generation = generation;
        self.legend = legend;
        self.image = image;
    }

//    init(number: Int, name: String, type1: String, type2: String, total: Int, hp: Int, attack: Int, defense: Int, sAttack: Int, sDefense: Int, speed: Int, generation: Int, legend: String, imageStr: String, image: UIImageView){
//        self.number = number;
//        self.name = name;
//        self.type1 = type1;
//        self.type2 = type2;
//        self.total = total;
//        self.hp = hp;
//        self.attack = attack;
//        self.defense = defense;
//        self.sAttack = sAttack;
//        self.sDefense = sDefense;
//        self.speed = speed;
//        self.generation = generation;
//        self.legend = legend;
//        self.imageStr = imageStr;
//        self.image = image;
//        //setImage(imageStr: imageStr);
//    }
    
    func getNum() -> Int {
        return number;
    }
    
    func getName() -> String{
        return name;
    }
    
    func getType1() -> String{
        return type1;
    }
    
    func getType2() -> String{
        return type2;
    }
    
    func getTotal() -> Int {
        return total;
    }
    
    func getHP() -> Int {
        return hp;
    }
    
    func getAttack() -> Int{
        return attack;
    }
    
    func getDefense() -> Int{
        return defense;
    }
    
    func getSAttack() -> Int{
        return sAttack;
    }
    
    func getSDefense() -> Int{
        return sDefense;
    }
    
    func getSpeed() -> Int{
        return speed;
    }
    
    func getGeneration() -> Int{
        return generation;
    }
    
    func isLegend() -> String{
        return legend;
    }
    
    func getImage() -> UIImageView{
        return image
    }
    
    func setNumber(number:Int){
        self.number = number;
    }
    
    func setName(name:String){
        self.name = name;
    }
    
    func setType1(type1: String){
        self.type1 = type1;
    }
    
    func setType2(type2: String){
        self.type2 = type2;
    }
    
    func setTotal(total: Int){
        self.total = total;
    }
    
    func setHP(hp:Int) {
        self.hp = hp;
    }
    
    func setAttack(attack: Int) {
        self.attack = attack;
    }
    
    func setDefense(defense: Int) {
        self.defense = defense;
    }
    
    func setSAttack(sAttack: Int){
        self.sAttack = sAttack;
    }
    
    func setSDefense(sDefense: Int){
        self.sDefense = sDefense;
    }
    
    func setSpeed(speed: Int){
        self.speed = speed;
    }
    
    func setGeneration(generation: Int){
        self.generation = generation;
    }
    
    func setLegend(legend: String){
        self.legend = legend
    }
    
    func setImage(image: UIImageView) {
        self.image = image;
    }
}

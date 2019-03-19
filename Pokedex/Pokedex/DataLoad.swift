//
//  DataLoad.swift
//  Pokedex
//
//  Created by Andrew Freitas on 2/19/19.
//  Copyright © 2019 Andrew Freitas. All rights reserved.
//

import Foundation
import UIKit

public class DataLoad{
    let path: String
    var data:[[String:String]] = []
    var columnTitles:[String] = []
    var pokeList = [Pokemon]()
    var number = 0
    var name = ""
    var type1 = ""
    var type2 = ""
    var total = 0
    var hp = 0
    var attack = 0
    var defense = 0
    var sAttack = 0
    var sDefense = 0
    var speed = 0
    var generation = 0
    var legend = ""
    
    
    init(path:String){
        self.path = path
    }
    //Method used to take a row within a csv file, in this case the first. Used to extract column names
    func getStringFieldsForRow(row:String, delimiter: String) -> [String]{
        return row.components(separatedBy: delimiter)
    }
    
    func readFile(file:String)->[Pokemon]{
        var poke = [Pokemon]()
        let path = Bundle.main.path(forResource: file, ofType: "txt")
        var text = "";
        do{
            text = try String(contentsOfFile: path!)
            //print(text)
        }
        catch(_){print("error")}
        var list = text.components(separatedBy: "\n")
        for i in 1...list.count-2{
            var pokeVariables = list[i].components(separatedBy: ",")
            number = Int(pokeVariables[0])!
            name = pokeVariables[1]
            type1 = pokeVariables[2]
            type2 = pokeVariables[3]
            total = Int(pokeVariables[4])!
            hp = Int(pokeVariables[5])!
            attack = Int(pokeVariables[6])!
            defense = Int(pokeVariables[7])!
            sAttack = Int(pokeVariables[8])!
            sDefense = Int(pokeVariables[9])!
            speed = Int(pokeVariables[10])!
            generation = Int(pokeVariables[11])!
            legend = pokeVariables[12]
            var pokeName = ""
            if(name == "Nidoran♀"){
                pokeName = "nidoran-f"
            } else if (name == "Nidoran♂"){
                pokeName = "nidoran-m"
            } else if(name == "Mr. Mime") {
                pokeName = "mr-mime"
            }else if(name == "Farfetch'd"){
                pokeName = "farfetchd"
            } else{
                pokeName = name.lowercased()
            }
            let imageStr = "https://img.pokemondb.net/sprites/silver/normal/" + pokeName + ".png"
            let pokeImage = URL(string: imageStr)
            let data = try? Data(contentsOf: pokeImage!)
            var image: UIImageView!
            if let imageData = data {
                image = UIImageView(image: UIImage(data: imageData))
                poke.insert(Pokemon(number: number, name: name, type1: type1, type2: type2, total: total, hp: hp, attack: attack, defense: defense, sAttack: sAttack, sDefense: sDefense, speed: speed, generation: generation, legend: legend, image: image),at: i-1)
                print(name)
            }
        }
        return poke
    }
}

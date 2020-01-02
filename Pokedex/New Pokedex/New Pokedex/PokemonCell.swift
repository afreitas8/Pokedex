//
//  PokemonCell.swift
//  New Pokedex
//
//  Created by Andrew Freitas on 12/30/19.
//  Copyright © 2019 Andrew Freitas. All rights reserved.
//

import UIKit

public class PokemonCell: UITableViewCell {
    
    var pokemon: Pokemon?{
        didSet{
            
            guard let pokeName = pokemon?.name else{
                return
            }
            
            guard let pokeNum = pokemon?.number else{
                return
            }
            
            guard let typeOne = pokemon?.typeOne else{
                return
            }
            
            guard let typeTwo = pokemon?.typeTwo else{
                return
            }
            
            self.pokemonLabel.text = "#" + String(pokeNum) + ". " + pokeName
            self.typeOneLabel.image = UIImage(named: typeOne)
            if(typeTwo != ""){
                self.typeTwoLabel.image = UIImage(named: typeTwo)
            }
            self.pokeImageLabel.image = pokemon?.pokeImage.image
            
        }
    }
    
    
    private let pokemonLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private let typeOneLabel: UIImageView = {
        let imageView = UIImageView()
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "Fire"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let typeTwoLabel: UIImageView = {
        let imageView = UIImageView()
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "Flying"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView

    }()
    
    private let pokeImageLabel: UIImageView = {
        let imageView = UIImageView()
        //let imageView = UIImageView(image: #imageLiteral(resourceName: "charizard"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        
        addSubview(pokemonLabel)
        pokemonLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        pokemonLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        pokemonLabel.bottomAnchor.constraint(equalTo: self.centerYAnchor, constant: -4).isActive = true
        pokemonLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(typeOneLabel)
        typeOneLabel.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 4).isActive = true
        typeOneLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        typeOneLabel.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -150).isActive = true
        typeOneLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        addSubview(typeTwoLabel)
        typeTwoLabel.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 4).isActive = true
        typeTwoLabel.leftAnchor.constraint(equalTo: typeOneLabel.rightAnchor, constant: 4).isActive = true
        typeTwoLabel.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -100).isActive = true
        typeTwoLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        addSubview(pokeImageLabel)
        pokeImageLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        pokeImageLabel.topAnchor.constraint(equalTo:self.topAnchor, constant: 8).isActive = true
        pokeImageLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        pokeImageLabel.widthAnchor.constraint(equalToConstant: 72).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("Didn't work")
    }
    
}

//
//  PokemonViewController.swift
//  New Pokedex
//
//  Created by Andrew Freitas on 1/2/20.
//  Copyright © 2020 Andrew Freitas. All rights reserved.
//

import UIKit

public class PokemonViewController: UIViewController {
    
    var pokemon: Pokemon?
    
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = pokemon?.name else{
            return
        }
        displayPokemon()
        
        navigationItem.title = name
        view.backgroundColor = .white
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(handleClosedPokemon))
    }
    
    @objc func handleClosedPokemon(){
        dismiss(animated: true, completion: nil)
    }
    
    
    func displayPokemon(){
        guard let pokeImage = pokemon?.pokeImage else {
            return
        }
        guard let pokeHealth = pokemon?.health else{
            return
        }
        guard let pokeAttack = pokemon?.attack else{
            return
        }
        guard let pokeDefense = pokemon?.defense else{
            return
        }
        guard let pokeSAttack = pokemon?.sAttack else{
            return
        }
        guard let pokeSDefense = pokemon?.sDefense else{
            return
        }
        guard let pokeSpeed = pokemon?.speed else {
            return
        }
        guard let pokeTotal = pokemon?.totalStats else{
            return
        }
        
        let healthLabel = UILabel()
        let attackLabel = UILabel()
        let defenseLabel = UILabel()
        let sAttackLabel = UILabel()
        let sDefenseLabel = UILabel()
        let speedLabel = UILabel()
        let totalLabel = UILabel()
        
        let healthLabelValue = UILabel()
        let attackLabelValue = UILabel()
        let defenseLabelValue = UILabel()
        let sAttackLabelValue = UILabel()
        let sDefenseLabelValue = UILabel()
        let speedLabelValue = UILabel()
        let totalLabelValue = UILabel()
        
        //Switched from label -> UIImageView and now it doesnt work
//        let healthLabelBox = UILabel()
//        healthLabelBox.backgroundColor = .red
//        healthLabelBox.layer.cornerRadius = 12
//        let attackLabelBox = UILabel()
//        attackLabelBox.backgroundColor = .orange
//        attackLabelBox.layer.cornerRadius = 12
//        let defenseLabelBox = UILabel()
//        defenseLabelBox.backgroundColor = .yellow
//        defenseLabelBox.layer.cornerRadius = 12
//        let sAttackLabelBox = UILabel()
//        sAttackLabelBox.backgroundColor = .cyan
//        sAttackLabelBox.layer.cornerRadius = 12
//        let sDefenseLabelBox = UILabel()
//        sDefenseLabelBox.backgroundColor = .green
//        sDefenseLabelBox.layer.cornerRadius = 12
//        let speedLabelBox = UILabel()
//        speedLabelBox.backgroundColor = .systemPink
//        speedLabelBox.layer.cornerRadius = 12
        
        let healthLabelBox = UIImageView(color: .red)
        let attackLabelBox = UIImageView(color: .orange)
        let defenseLabelBox = UIImageView(color: .yellow)
        let sAttackLabelBox = UIImageView(color:.cyan)
        let sDefenseLabelBox = UIImageView(color: .green)
        let speedLabelBox = UIImageView(color: .systemPink)

        
        
        
        healthLabel.text = "HP: "
        healthLabel.textAlignment = .left
        attackLabel.text = "Attack: "
        attackLabel.textAlignment = .left
        defenseLabel.text = "Defense: "
        defenseLabel.textAlignment = .left
        sAttackLabel.text = "Special Attack: "
        sAttackLabel.textAlignment = .left
        sDefenseLabel.text = "Special Defense: "
        sDefenseLabel.textAlignment = .left
        speedLabel.text = "Speed: "
        speedLabel.textAlignment = .left
        totalLabel.text = "Total Stats: "
        totalLabel.textAlignment = .left
        
        healthLabelValue.text = String(pokeHealth)
        healthLabelValue.textAlignment = .right
        attackLabelValue.text = String(pokeAttack)
        attackLabelValue.textAlignment = .right
        defenseLabelValue.text = String(pokeDefense)
        defenseLabelValue.textAlignment = .right
        sAttackLabelValue.text = String(pokeSAttack)
        sAttackLabelValue.textAlignment = .right
        sDefenseLabelValue.text = String(pokeSDefense)
        sDefenseLabelValue.textAlignment = .right
        speedLabelValue.text = String(pokeSpeed)
        speedLabelValue.textAlignment = .right
        totalLabelValue.text = String(pokeTotal)
        totalLabelValue.textAlignment = .right
        
        
        view.addSubview(pokeImage)
        pokeImage.translatesAutoresizingMaskIntoConstraints = false
        pokeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pokeImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant:-100).isActive = true
        pokeImage.widthAnchor.constraint(equalToConstant: 300).isActive = true
        pokeImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        view.addSubview(healthLabel)
        healthLabel.translatesAutoresizingMaskIntoConstraints = false
        healthLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        healthLabel.topAnchor.constraint(equalTo:pokeImage.bottomAnchor, constant: 20).isActive = true
        healthLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(healthLabelValue)
        healthLabelValue.translatesAutoresizingMaskIntoConstraints = false
        healthLabelValue.leftAnchor.constraint(equalTo:healthLabel.rightAnchor).isActive = true
        healthLabelValue.topAnchor.constraint(equalTo:pokeImage.bottomAnchor,constant: 20).isActive = true
        healthLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(healthLabelBox)
        healthLabelBox.translatesAutoresizingMaskIntoConstraints = false
        healthLabelBox.leftAnchor.constraint(equalTo:healthLabelValue.rightAnchor, constant: 4).isActive = true
        //healthLabelBox.rightAnchor.constraint(equalTo:view.rightAnchor , constant: -10).isActive = true
        healthLabelBox.topAnchor.constraint(equalTo:pokeImage.bottomAnchor, constant: 20).isActive = true
        healthLabelBox.widthAnchor.constraint(equalToConstant: CGFloat(pokeHealth)).isActive = true
        
        view.addSubview(attackLabel)
        attackLabel.translatesAutoresizingMaskIntoConstraints = false
        attackLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        attackLabel.topAnchor.constraint(equalTo:healthLabel.bottomAnchor, constant: 10).isActive = true
        attackLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(attackLabelValue)
        attackLabelValue.translatesAutoresizingMaskIntoConstraints = false
        attackLabelValue.leftAnchor.constraint(equalTo:attackLabel.rightAnchor).isActive = true
        attackLabelValue.topAnchor.constraint(equalTo:healthLabelValue.bottomAnchor,constant: 10).isActive = true
        attackLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(attackLabelBox)
        attackLabelBox.translatesAutoresizingMaskIntoConstraints = false
        attackLabelBox.leftAnchor.constraint(equalTo:attackLabelValue.rightAnchor, constant: 4).isActive = true
        attackLabelBox.topAnchor.constraint(equalTo:healthLabelBox.bottomAnchor, constant: 10).isActive = true
        attackLabelBox.widthAnchor.constraint(equalToConstant: CGFloat(pokeAttack)).isActive = true
        
        view.addSubview(defenseLabel)
        defenseLabel.translatesAutoresizingMaskIntoConstraints = false
        defenseLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        defenseLabel.topAnchor.constraint(equalTo:attackLabel.bottomAnchor, constant: 10).isActive = true
        defenseLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(defenseLabelValue)
        defenseLabelValue.translatesAutoresizingMaskIntoConstraints = false
        defenseLabelValue.leftAnchor.constraint(equalTo:defenseLabel.rightAnchor).isActive = true
        defenseLabelValue.topAnchor.constraint(equalTo:attackLabelValue.bottomAnchor,constant: 10).isActive = true
        defenseLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(defenseLabelBox)
        defenseLabelBox.translatesAutoresizingMaskIntoConstraints = false
        defenseLabelBox.leftAnchor.constraint(equalTo:defenseLabelValue.rightAnchor, constant: 4).isActive = true
        defenseLabelBox.topAnchor.constraint(equalTo:attackLabelBox.bottomAnchor, constant: 10).isActive = true
        defenseLabelBox.widthAnchor.constraint(equalToConstant: CGFloat(pokeDefense)).isActive = true
        
        view.addSubview(sAttackLabel)
        sAttackLabel.translatesAutoresizingMaskIntoConstraints = false
        sAttackLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        sAttackLabel.topAnchor.constraint(equalTo:defenseLabel.bottomAnchor, constant: 10).isActive = true
        sAttackLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
                
        view.addSubview(sAttackLabelValue)
        sAttackLabelValue.translatesAutoresizingMaskIntoConstraints = false
        sAttackLabelValue.leftAnchor.constraint(equalTo:sAttackLabel.rightAnchor).isActive = true
        sAttackLabelValue.topAnchor.constraint(equalTo:defenseLabelValue.bottomAnchor,constant: 10).isActive = true
        sAttackLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
                
        view.addSubview(sAttackLabelBox)
        sAttackLabelBox.translatesAutoresizingMaskIntoConstraints = false
        sAttackLabelBox.leftAnchor.constraint(equalTo:sAttackLabelValue.rightAnchor, constant: 4).isActive = true
        sAttackLabelBox.topAnchor.constraint(equalTo:defenseLabelBox.bottomAnchor, constant: 10).isActive = true
        sAttackLabelBox.widthAnchor.constraint(equalToConstant: CGFloat(pokeSAttack)).isActive = true
        
        view.addSubview(sDefenseLabel)
        sDefenseLabel.translatesAutoresizingMaskIntoConstraints = false
        sDefenseLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        sDefenseLabel.topAnchor.constraint(equalTo:sAttackLabel.bottomAnchor, constant: 10).isActive = true
        sDefenseLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
                
        view.addSubview(sDefenseLabelValue)
        sDefenseLabelValue.translatesAutoresizingMaskIntoConstraints = false
        sDefenseLabelValue.leftAnchor.constraint(equalTo:sDefenseLabel.rightAnchor).isActive = true
        sDefenseLabelValue.topAnchor.constraint(equalTo:sAttackLabelValue.bottomAnchor,constant: 10).isActive = true
        sDefenseLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
                        
        view.addSubview(sDefenseLabelBox)
        sDefenseLabelBox.translatesAutoresizingMaskIntoConstraints = false
        sDefenseLabelBox.leftAnchor.constraint(equalTo:sDefenseLabelValue.rightAnchor, constant: 4).isActive = true
        sDefenseLabelBox.topAnchor.constraint(equalTo:sAttackLabelBox.bottomAnchor, constant: 10).isActive = true
        sDefenseLabelBox.widthAnchor.constraint(equalToConstant: CGFloat(pokeSDefense)).isActive = true
        
        view.addSubview(speedLabel)
        speedLabel.translatesAutoresizingMaskIntoConstraints = false
        speedLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        speedLabel.topAnchor.constraint(equalTo:sDefenseLabel.bottomAnchor, constant: 10).isActive = true
        speedLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
                    
        view.addSubview(speedLabelValue)
        speedLabelValue.translatesAutoresizingMaskIntoConstraints = false
        speedLabelValue.leftAnchor.constraint(equalTo:speedLabel.rightAnchor).isActive = true
        speedLabelValue.topAnchor.constraint(equalTo:sDefenseLabelValue.bottomAnchor,constant: 10).isActive = true
        speedLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
                                
        view.addSubview(speedLabelBox)
        speedLabelBox.translatesAutoresizingMaskIntoConstraints = false
        speedLabelBox.leftAnchor.constraint(equalTo:speedLabelValue.rightAnchor, constant: 4).isActive = true
        speedLabelBox.topAnchor.constraint(equalTo:sDefenseLabelBox.bottomAnchor, constant: 10).isActive = true
        speedLabelBox.widthAnchor.constraint(equalToConstant: CGFloat(pokeSpeed)).isActive = true
        
        view.addSubview(totalLabel)
        totalLabel.translatesAutoresizingMaskIntoConstraints = false
        totalLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        totalLabel.topAnchor.constraint(equalTo:speedLabel.bottomAnchor, constant: 10).isActive = true
        totalLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
                    
        view.addSubview(totalLabelValue)
        totalLabelValue.translatesAutoresizingMaskIntoConstraints = false
        totalLabelValue.leftAnchor.constraint(equalTo:totalLabel.rightAnchor).isActive = true
        totalLabelValue.topAnchor.constraint(equalTo:speedLabelValue.bottomAnchor,constant: 10).isActive = true
        totalLabelValue.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
}

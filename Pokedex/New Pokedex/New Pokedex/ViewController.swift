//
//  ViewController.swift
//  New Pokedex
//
//  Created by Andrew Freitas on 12/29/19.
//  Copyright © 2019 Andrew Freitas. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pokemon = [Pokemon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tableView.register(PokemonCell.self, forCellReuseIdentifier: "cellID")
        tableView.backgroundColor = .white

        setupNavBarStyles()
        loadPokemon()
    
        // Do any additional setup after loading the view.
    }
    
    func loadPokemon(){
        let path = "/Users/andrewfreitas/Library/Mobile Documents/com~apple~TextEdit/Documents/pokemon.txt"
        let data = DataLoad(path: path)
        self.pokemon = data.readFile(file: "pokemon")
        
//        for poke in pokemon{
//            print(poke.name)
//        }
    }
    
    func setupNavBarStyles(){
        navigationItem.title = "Kanto Pokedex"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.isTranslucent = false
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let pokemon = self.pokemon[indexPath.row]
        let pokemonController = PokemonViewController()
        pokemonController.pokemon = pokemon
        let navController = UINavigationController(rootViewController: pokemonController)
        present(navController, animated: true, completion: nil)
        print(pokemon.name)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let poke = pokemon[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for:indexPath) as! PokemonCell
        cell.pokemon = poke
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 80
    }
}


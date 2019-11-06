//
//  MainScreen.swift
//  Pokedex
//
//  Created by Andrew Freitas on 2/21/19.
//  Copyright © 2019 Andrew Freitas. All rights reserved.
//

import UIKit

class MainScreen: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //let path = Bundle.main.path(forResource: "pokemon", ofType: "txt")
    let data = DataLoad(path:"/Users/andrewfreitas/Library/Mobile Documents/com~apple~TextEdit/Documents/pokemon.txt" )
    var pokeList = [Pokemon]()
    private var myTableView: UITableView!
    var sortList = ["Sort by Number Ascending", "Sort by Number Descending" , "Sort by HP Ascending", "Sort by HP Descending" ,"Sort by Attack Ascending", "Sort by Attack Descending" ,"Sort by Defense Ascending", "Sort by Defense Descending" ,"Sort by S.Attack Ascending", "Sort by S.Attack Descending" ,"Sort by S.Defense Ascending", "Sort by S.Defense Descending" ,"Sort by Speed Ascending", "Sort by Speed Descending" ,"Sort by Total Ascending", "Sort by Total Descending" ]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        pokeList = data.readFile(file: "pokemon")
        navigationItem.title = "Kanto Pokedex"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        //navigationItem.searchController = UISearchController(searchResultsController: nil)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        button.setTitle(sortList.first, for: .normal)
//        button.addTarget(self, action: #selector(JustPCAction), for: .touchUpInside)
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayHeight: CGFloat = self.view.frame.height
        let displayWidth: CGFloat = self.view.frame.width
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
        self.view.addSubview(button)
    }
    
    //This function sets the height for each cell in the table view
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height = 100
        return CGFloat(data.imageHeight + 10)//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Num: \(indexPath.row)")
        print("Value: \(pokeList[indexPath.row])")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokeList.count
    }
    
    //Im going to need to create a class for pokemon image view, name view, stats view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        let poke = pokeList[indexPath.row]
        cell.textLabel?.text = String("No. " + String(poke.getNum()) + " " + poke.getName())
        cell.accessoryView = poke.image
        return cell
    }
}

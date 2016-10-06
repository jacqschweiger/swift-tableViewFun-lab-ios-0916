//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var dogs: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDogList()
    }
    
    func createDogList() {
        dogs = ["Golden Retriever", "Beagle", "Labrador", "Jack Russell Terrier", "King Charles Spaniel", "Poodle", "Yorshire Terrier", "Sheepdog", "Bloodhound", "Dachshund", "Chihuahua", "Mutt", "Corgi", "Bichon", "Greyhound", "Schnauser", "Doberman"]
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dogs.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        
        let currentDog = dogs[indexPath.row]
        
        cell.textLabel?.text = currentDog
        
        return cell
        
    }

   
    
    
}

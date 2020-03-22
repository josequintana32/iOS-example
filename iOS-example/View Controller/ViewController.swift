//
//  ViewController.swift
//  iOS-example
//
//  Created by Jose Quintana on 20/03/2020.
//  Copyright © 2020 Kelsus. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UITableViewController {
    
    var items: [Displayable] = []
    var films: [Film] = []
    var selectedItem: Displayable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFilms()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = item.titleLabelText
        cell.detailTextLabel?.text = item.overviewLabelText
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedItem = items[indexPath.row]
        return indexPath
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailViewController else {
            return
        }
        destinationVC.data = selectedItem
    }
}

// MARK: - Alamofire
extension ViewController {
    func fetchFilms(){
        AF.request("https://api.themoviedb.org/4/discover/movie?api_key=2d04551872dcb77ef59f9fc4c2161b66").validate().responseDecodable(of: Films.self) { (response) in
            guard let films = response.value else { return}
            print("ddde1")
            self.films = films.results
            self.items = films.results     
            self.tableView.reloadData()
        }
        
        
    }
    
}




//
//  ListVC.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import UIKit

class ListVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var products = [ProductViewModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData(){
        let arrayFromJson = Json.loadJsonFile()
        for prod in arrayFromJson {
            products.append(ProductViewModel(product: prod))
        }
    }
    

    //MARK: - TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        cell.configureCell(productViewModel: products[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productViewModel = products[indexPath.row]
        performSegue(withIdentifier: "detailsProduct", sender: productViewModel)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsProduct" {
            if let destination = segue.destination as? DetailsVC {
                if let productViewModel = sender as? ProductViewModel {
                    destination.productViewModel = productViewModel
                }
            }
        }
    }

}


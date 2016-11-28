//
//  ProductCell.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var product: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var color: UILabel!
    
    
    func configureCell(productViewModel:ProductViewModel){
        self.product.text = productViewModel.name
        self.price.text = productViewModel.price
        self.color.text = productViewModel.color
        
        
    }

}

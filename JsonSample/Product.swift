//
//  Product.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import Foundation
import SwiftyJSON

class Product {
    
    var name1: String
    var name2: String
    var images: [Images]
    var price: Prices
    var style: String
    var colorCode: Int
    
    init(json:JSON){
        self.name1 = json["name1"].stringValue
        self.name2 = json["name2"].stringValue
        self.style = json["style"].stringValue
        self.colorCode = json["colorCode"].intValue
        
        self.images = [Images]()
        let arrayImages = json["images"].arrayValue
        for img in arrayImages {
            let img = Images(json: img)
            self.images.append(img)
        }
        
        self.price = Prices(json: json["prices"])
    }
}

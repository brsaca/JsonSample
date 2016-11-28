//
//  Json.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import Foundation
import SwiftyJSON


class Json {
    
    class func loadJsonFile() -> [Product] {
        var jsonData: Data?
        var products = [Product]()
        if let file = Bundle.main.path(forResource: "productList", ofType: "json") {
            jsonData = try? Data(contentsOf: URL(fileURLWithPath: file))
            let json = JSON(data:jsonData!)
            
            let results: Array<JSON> = json["results"].arrayValue
            
            let dict: Dictionary<String, JSON> = results[0].dictionaryValue
            let array: Array<JSON> = (dict["products"]?.arrayValue)!
            
            for pro in array {
                let product = Product(json: pro)
                products.append(product)
            }
        } else {
            print("Fail")
        }
        
        return products
    }
    
}

//
//  ProductViewModel.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import UIKit

class ProductViewModel {
    let name: String
    let price: String
    let color: String
    
    let product: Product
    
    init(product: Product){
        self.product = product
        self.color = ProductViewModel.getColorString(with: product)
        self.price = ProductViewModel.getPriceString(with: product)
        self.name  = ProductViewModel.getNameString(with: product)
    }
    
    private static func getNameString(with product: Product) -> String {
        let name = "\(product.name1) \(product.name2)"
        return name
    }
    
    private static func getColorString(with product: Product) -> String {
        let color = "Color: \(product.colorCode)"
        return color
    }
    
    private static func getPriceString(with product: Product) -> String {
        let price = "Price: \(product.price.formattedCurrentRetail)"
        return price
    }
}

//
//  Prices.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import Foundation
import SwiftyJSON

class Prices {
    var list: Double
    var currentRetail: Double
    var sale: Double
    var currencyCode: String
    var formattedList: String
    var formattedCurrentRetail: String
    var formattedSale: String
    
    init(json:JSON){
        self.list = json["list"].doubleValue
        self.currentRetail = json["currentRetail"].doubleValue
        self.sale = json["sale"].doubleValue
        self.currencyCode = json["currencyCode"].stringValue
        self.formattedList = json["formattedList"].stringValue
        self.formattedCurrentRetail = json["formattedCurrentRetail"].stringValue
        self.formattedSale = json["formattedSale"].stringValue
    }
}

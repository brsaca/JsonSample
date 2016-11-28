//
//  Images.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import Foundation
import SwiftyJSON

class Images {
    var path: URL
    var alt: String
    var type: String
    var sortOrder: Int
    
    init(json:JSON){
        self.path = URL(string: json["path"].stringValue)!
        self.alt = json["alt"].stringValue
        self.type = json["type"].stringValue
        self.sortOrder = json["sortOrder"].intValue
    }
    
}

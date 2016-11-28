//
//  JsonSampleTests.swift
//  JsonSampleTests
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import XCTest
@testable import JsonSample

class JsonSampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let array:[Product] = Json.loadJsonFile()
        XCTAssertTrue(array.count>0, "There is at least one product")
        
        let product: Product = array[0]
        XCTAssertTrue(product.images.count == 2, "The product has two images")
        
        XCTAssertTrue(product.price.formattedList == "£10", "The product £10 formattedList")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

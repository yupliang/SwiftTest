//
//  SwiftTestTests.swift
//  SwiftTestTests
//
//  Created by app-01 on 16/4/27.
//  Copyright © 2016年 科技. All rights reserved.
//

import XCTest
@testable import SwiftTest

class SwiftTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRegex() {
        let string:String = "http://www.baidu.com?wezeit_jump=2"
        let regex:String = "wezeit_jump=(\\d+)"
        let result = string.captureComponentsMatchedByRegex(regex)
        if result.count>1 {
           XCTAssertEqual(result[1] as? String, "2")
        }
        
//        if let validarray:Array = result {
//            XCTAssertEqual(validarray[1] as? String, "2")
//        } 
        else {
            XCTAssertTrue(false,"not passed")
        }
    }
    
    func testPerson() {
        let person:Person = Person()
        XCTAssertNotNil(person, "passed")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}

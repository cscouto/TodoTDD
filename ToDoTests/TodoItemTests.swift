//
//  TodoItemTests.swift
//  ToDoTests
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/10/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import XCTest
@testable import ToDo

class TodoItemTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_Init_TakesTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo", "Should set title")
    }
    
    func test_Init_TakesTitleAndDescription() {
        let item = ToDoItem(title: "Foo", itemDescription: "Bar")
        XCTAssertEqual(item.itemDescription, "Bar", "Should set item description")
    }
    
    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "", timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func test_Init_SetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "", location: location)
        XCTAssertEqual(item.location?.name, location.name, "Should set location")
    }

}

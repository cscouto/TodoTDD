//
//  ItemManagerTests.swift
//  ToDoTests
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/10/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    var sut: ItemManager!
    
    override func setUp() {
        super.setUp()
        sut = ItemManager()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func test_TodoCount_Initially_IsZero() {
        XCTAssertEqual(sut.toDoCount, 0)
    }
    
    func test_DoneCount_Initially_IsZero() {
        XCTAssertEqual(sut.doneCount, 0)
    }
}

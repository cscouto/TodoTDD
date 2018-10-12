//
//  ItemListViewController.swift
//  ToDoTests
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/12/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListViewControllerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_TableViewIsNotNilAfterViewDidLoad() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
        controller.loadViewIfNeeded()
        XCTAssertNil(controller.tableView)
    }

}

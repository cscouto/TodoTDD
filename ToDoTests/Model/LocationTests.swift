//
//  LocationTests.swift
//  ToDoTests
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/10/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import XCTest
@testable import ToDo
import CoreLocation

class LocationTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_Init_SetsCoordinate() {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "", coordinate: coordinate)
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }
    
    func test_Init_SetsName() {
        let location = Location(name: "Foo")
        XCTAssertEqual(location.name, "Foo")
    }
    
    func test_EqualLocations_AreEqual() {
        let first = Location(name: "Foo")
        let second = Location(name: "Foo")
        XCTAssertEqual(first, second)
    }
    
    func test_Locations_WhenLatitudeDiffers_AreNotEqual() {
        assertLocationNotEqualWith(firstName: "Foo",
                                   firstLongLat: (1.0, 0.0),
                                   secondName: "Foo",
                                   secondLongLat: (0.0, 0.0))
    }
    
    func assertLocationNotEqualWith(firstName: String,
                                    firstLongLat: (Double, Double)?,
                                    secondName: String,
                                    secondLongLat: (Double, Double)?,
                                    line: UInt = #line) {
        guard let firstLongLat = firstLongLat else {
            return
        }
        guard let secondLongLat = secondLongLat else {
            return
        }
        let firstCoord = CLLocationCoordinate2D(latitude: firstLongLat.0, longitude: firstLongLat.1)
        let secondCoord = CLLocationCoordinate2D(latitude: secondLongLat.0, longitude: secondLongLat.1)
        let firstLocation = Location(name: firstName, coordinate: firstCoord)
        let secondLocation = Location(name: secondName, coordinate: secondCoord)
        
        XCTAssertNotEqual(firstLocation, secondLocation, line: line)
    }
}

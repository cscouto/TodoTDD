//
//  ToDoItem.swift
//  ToDo
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/10/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

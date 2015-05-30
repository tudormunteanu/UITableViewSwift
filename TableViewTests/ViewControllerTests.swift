//
//  ViewControllerTests.swift
//  TableView
//
//  Created by Tudor on 30/05/2015.
//  Copyright (c) 2015 http://mowowstudios.com. All rights reserved.
//

import UIKit
import XCTest
import TableView


class ViewControllerTests:XCTestCase {
    
    let viewController = ViewController()
    
    func testViewControllerInit() {
        
        XCTAssertNotNil(viewController, "our view controller should not be nil")
    }
    
    func testLoadingData() {
        
        viewController.viewDidLoad()
        XCTAssertTrue(viewController.years.count > 0, "we should have some data")
        XCTAssertEqual(viewController.years[0], "Year 1900", "Our first data element is correct")
    }
    
    func testViewControllerComponents() {
        
        viewController.viewDidLoad()
        XCTAssertNotNil(viewController.tableView, "we have a tableview")
        XCTAssertNotNil(viewController.timeMachine, "we have a time machine")
        
    }
    
}
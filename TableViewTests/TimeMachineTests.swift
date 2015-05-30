//
//  TimeMachineTests.swift
//  TableView
//
//  Created by Tudor on 30/05/2015.
//  Copyright (c) 2015 http://mowowstudios.com. All rights reserved.
//

import UIKit
import XCTest
import TableView

class TimeMachineTests: XCTestCase {
    
    let timeMachine = TimeMachine()
    
    func testTimeMachineInit() {

        XCTAssertNotNil(timeMachine, "The TimeMachine should initialise")
    }
    
    func testGoingBackInTime() {
        
        let pastYear = timeMachine.goBackInTime(12)
        XCTAssertEqual(pastYear, 1912, "The TimeMachine should send to 1912")
    }
}

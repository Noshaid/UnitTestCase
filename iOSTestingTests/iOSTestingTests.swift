//
//  iOSTestingTests.swift
//  iOSTestingTests
//
//  Created by Noshaid Ali on 14/04/2020.
//  Copyright © 2020 Noshaid Ali. All rights reserved.
//

import XCTest
@testable import iOSTesting
import UIKit

class iOSTestingTests: XCTestCase {

    func test_viewDidLoad_firesNetworkRequest() {
        //Arrange
        //Given (some inital state)
        let network = MockNetworkStack()
        let sut = ViewController(network: network) //system under testing
        sut.network = network
        //Act
        //When (some action occurs)
        sut.loadViewIfNeeded()
        
        //Assert
        //Then (expectation)
        XCTAssertEqual(network.firedRequest, true)
        XCTAssertEqual(sut.title, "good")
    }
    
    func testAdd() throws {
        let obj = ViewController()
        let sum = obj.addNums(a: 2, b: 2)
        XCTAssertEqual(sum, 4)
    }
    
    func testSquare() throws {
        let num = 3
        XCTAssertEqual(num.square(), 9)
    }
    
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

}

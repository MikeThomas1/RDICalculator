//
//  UnitsOfMeasureTests.swift
//  RDICalculatorTests
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import XCTest

import RDICalculator

class UnitTests: XCTestCase {
    func testLbToKgConversion() {
        // Conversion values based on google's converison tool
        let pound1 = Pound(value: 1.0)
        let weight1 = Weight(pound1)
        
        XCTAssertEqual(weight1.lbs.value, 1.0)
        XCTAssertEqual(weight1.kgs.value, 0.45359237)
        
        let pound2 = Pound(value: 100.0)
        let weight2 = Weight(pound2)
        
        XCTAssertEqual(weight2.lbs.value, 100.0)
        XCTAssertEqual(weight2.kgs.value, 45.359237)
    }
}

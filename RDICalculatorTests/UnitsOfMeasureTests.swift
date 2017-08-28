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
    // All test value verfied with google unit conversion tool
    
    // MARK: - Weight
    func testLbToKgConversion() {
        let pound1 = Pound(value: 1.0)
        let weight1 = Weight(pound1)
        
        XCTAssertEqual(weight1.pound.value, 1.0)
        XCTAssertEqual(weight1.kilogram.value, 0.45359237)
        
        let pound2 = Pound(value: 100.0)
        let weight2 = Weight(pound2)
        
        XCTAssertEqual(weight2.pound.value, 100.0)
        XCTAssertEqual(weight2.kilogram.value, 45.359237)
    }
    
    func testKgToLbConversion() {
        let kilogram1 = Kilogram(value: 1.0)
        let weight1 = Weight(kilogram1)
        
        XCTAssertEqual(weight1.pound.value, 2.2046226218487757)
        XCTAssertEqual(weight1.kilogram.value, 1.0)
        
        let kilogram2 = Kilogram(value: 100.0)
        let weight2 = Weight(kilogram2)
        
        XCTAssertEqual(weight2.pound.value, 220.46226218487757)
        XCTAssertEqual(weight2.kilogram.value, 100.0)
    }
    
    func testPoundSymbol() {
        let pound = Pound(value: 1.0)
        XCTAssertEqual(pound.symbol, "lb")
    }
    
    func testKilogramSymbol() {
        let pound = Kilogram(value: 1.0)
        XCTAssertEqual(pound.symbol, "kg")
    }
    
    // MARK: - Height
    func testInchToCmConversion() {
        let inch1 = Inch(value: 1.0)
        let height1 = Height(inch1)
        
        XCTAssertEqual(height1.inch.value, 1.0)
        XCTAssertEqual(height1.centimeter.value, 2.54)
        
        let inch2 = Inch(value: 100.0)
        let height2 = Height(inch2)
        
        XCTAssertEqual(height2.inch.value, 100.0)
        XCTAssertEqual(height2.centimeter.value, 254.0)
    }
    
    func testCmToInchConversion() {
        let cm1 = Centimeter(value: 1.0)
        let height1 = Height(cm1)
        
        XCTAssertEqual(height1.inch.value, 0.39370078740157477)
        XCTAssertEqual(height1.centimeter.value, 1.0)
        
        let cm2 = Centimeter(value: 100.0)
        let height2 = Height(cm2)
        
        XCTAssertEqual(height2.inch.value, 39.370078740157481)
        XCTAssertEqual(height2.centimeter.value, 100.0)
    }
    
    func testInchSymbol() {
        let inch = Inch(value: 1.0)
        XCTAssertEqual(inch.symbol, "in")
    }
    
    func testCentimeterSymbol() {
        let cm = Centimeter(value: 1.0)
        XCTAssertEqual(cm.symbol, "cm")
    }
}

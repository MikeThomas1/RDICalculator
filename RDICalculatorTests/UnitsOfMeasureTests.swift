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
        
        XCTAssertEqual(weight1.lbs.value, 1.0)
        XCTAssertEqual(weight1.kgs.value, 0.45359237)
        
        let pound2 = Pound(value: 100.0)
        let weight2 = Weight(pound2)
        
        XCTAssertEqual(weight2.lbs.value, 100.0)
        XCTAssertEqual(weight2.kgs.value, 45.359237)
    }
    
    func testKgToLbConversion() {
        let kilogram1 = Kilogram(value: 1.0)
        let weight1 = Weight(kilogram1)
        
        XCTAssertEqual(weight1.lbs.value, 2.2046226218487757)
        XCTAssertEqual(weight1.kgs.value, 1.0)
        
        let kilogram2 = Kilogram(value: 100.0)
        let weight2 = Weight(kilogram2)
        
        XCTAssertEqual(weight2.lbs.value, 220.46226218487757)
        XCTAssertEqual(weight2.kgs.value, 100.0)
    }
    
    func testSingularLbDisplayValue() {
        let pound = Pound(value: 1.0)
        XCTAssertEqual(pound.displayValue, "1lb")
    }
    
    func testPluralLbDisplayValue() {
        let pound = Pound(value: 1.59999)
        XCTAssertEqual(pound.displayValue, "1.6lbs")
    }
    
    func testSingularKgDisplayValue() {
        let pound = Kilogram(value: 1.0)
        XCTAssertEqual(pound.displayValue, "1kg")
    }
    
    func testPluralKgDisplayValue() {
        let pound = Kilogram(value: 1.59999)
        XCTAssertEqual(pound.displayValue, "1.6kgs")
    }
    
    // MARK: - Height
    func testInchToCmConversion() {
        let inch1 = Inch(value: 1.0)
        let height1 = Height(inch1)
        
        XCTAssertEqual(height1.inch.value, 1.0)
        XCTAssertEqual(height1.cm.value, 2.54)
        
        let inch2 = Inch(value: 100.0)
        let height2 = Height(inch2)
        
        XCTAssertEqual(height2.inch.value, 100.0)
        XCTAssertEqual(height2.cm.value, 254.0)
    }
    
    func testCmToInchConversion() {
        let cm1 = Centimeter(value: 1.0)
        let height1 = Height(cm1)
        
        XCTAssertEqual(height1.inch.value, 0.39370078740157477)
        XCTAssertEqual(height1.cm.value, 1.0)
        
        let cm2 = Centimeter(value: 100.0)
        let height2 = Height(cm2)
        
        XCTAssertEqual(height2.inch.value, 39.370078740157481)
        XCTAssertEqual(height2.cm.value, 100.0)
    }
    
    func testSingularInchDisplayValue() {
        let inch = Inch(value: 1.0)
        XCTAssertEqual(inch.displayValue, "1inch")
    }
    
    func testPluralInchDisplayValue() {
        let inch = Inch(value: 1.59999)
        XCTAssertEqual(inch.displayValue, "1.6inches")
    }
    
    func testSingularCmDisplayValue() {
        let cm = Centimeter(value: 1.0)
        XCTAssertEqual(cm.displayValue, "1cm")
    }
    
    func testPluralCmDisplayValue() {
        let cm = Centimeter(value: 1.59999)
        XCTAssertEqual(cm.displayValue, "1.6cms")
    }
}

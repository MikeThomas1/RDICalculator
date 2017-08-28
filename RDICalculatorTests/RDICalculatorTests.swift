//
//  RDICalculatorTests.swift
//  RDICalculatorTests
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import XCTest
@testable import RDICalculator

class RDICalculatorTests: XCTestCase {
    func testSample() {
        let height = Height(Inch(value: 70.0))
        let weight = Weight(Pound(value: 170))
        let rdi = RDICalculator.calculate(height: height, weight: weight, gender: .male, age: 26, activity: .moderatelyActive)
        print("Carbs percentage: \(rdi.carbohydrate.percentage)")
        print("Carbs weight: \(rdi.carbohydrate.weight.gram)")
        print("Protein percentage: \(rdi.protein.percentage)")
        print("Protein weight: \(rdi.protein.weight.gram)")
        print("Fat percentage: \(rdi.fat.percentage)")
        print("Fat weight: \(rdi.fat.weight.gram)")
    }
}

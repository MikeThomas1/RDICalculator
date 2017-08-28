//
//  Centimeter.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Centimeter: HeightUnit {
    public let value: Double
    public let symbol = "cm"
    public let name = "centimeter"
    
    public init(value: Double) {
        self.value = value
    }
    
    public init(value: Int) {
        let dbl = Double(value)
        self.value = dbl
    }
    
    public init(value: Float) {
        let dbl = Double(value)
        self.value = dbl
    }
}

public extension Double {
    var centimeter: Centimeter {
        return Centimeter(value: self)
    }
}

public extension Float {
    var centimeter: Centimeter {
        return Centimeter(value: self)
    }
}

public extension Int {
    var centimeter: Centimeter {
        return Centimeter(value: self)
    }
}


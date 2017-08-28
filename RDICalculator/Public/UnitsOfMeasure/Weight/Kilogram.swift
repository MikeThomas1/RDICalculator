//
//  Kilogram.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Kilogram: WeightUnit {
    public let value: Double
    public let symbol = "kg"
    public var name = "kilogram"
    
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
    var kilogram: Kilogram {
        return Kilogram(value: self)
    }
}

public extension Float {
    var kilogram: Kilogram {
        return Kilogram(value: self)
    }
}

public extension Int {
    var kilogram: Kilogram {
        return Kilogram(value: self)
    }
}


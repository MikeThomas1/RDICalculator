//
//  Pound.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Pound: WeightUnit {
    public let value: Double
    public let symbol = "lb"
    public let name = "pound"
    
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

// TODO: document these
public extension Double {
    var pound: Pound {
        return Pound(value: self)
    }
}

public extension Float {
    var pound: Pound {
        return Pound(value: self)
    }
}

public extension Int {
    var pound: Pound {
        return Pound(value: self)
    }
}

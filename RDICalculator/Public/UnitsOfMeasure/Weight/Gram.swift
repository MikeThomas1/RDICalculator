//
//  Gram.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/28/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Gram: WeightUnit {
    public let value: Double
    public let symbol = "g"
    public let name = "gram"
    
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
    var gram: Gram {
        return Gram(value: self)
    }
}

public extension Float {
    var gram: Gram {
        return Gram(value: self)
    }
}

public extension Int {
    var gram: Gram {
        return Gram(value: self)
    }
}


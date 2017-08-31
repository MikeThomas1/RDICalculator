//
//  Inch.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Inch: HeightUnit {
    public let value: Double
    public let symbol = "in"
    public let name = "inch"
    
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
    var inch: Inch {
        return Inch(value: self)
    }
}

public extension Float {
    var inch: Inch {
        return Inch(value: self)
    }
}

public extension Int {
    var inch: Inch {
        return Inch(value: self)
    }
}


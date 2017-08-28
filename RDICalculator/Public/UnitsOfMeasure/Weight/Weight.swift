//
//  Weight.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Weight: UnitConverter {
    public init(_ unit: WeightUnit) {
        switch unit {
        case is Pound:
            self.pound = unit as! Pound
            
            let kgConvertedValue = pound.value * 0.45359237
            self.kilogram = Kilogram(value: kgConvertedValue)
        case is Kilogram:
            self.kilogram = unit as! Kilogram
            
            let lbConvertedValue = kilogram.value / 0.45359237
            self.pound = Pound(value: lbConvertedValue)
        case is Gram:
            let gram = unit as! Gram
            let kgConvertedValue = gram.value * 1000
            self.kilogram = Kilogram(value: kgConvertedValue)
            
            let lbConvertedValue = self.kilogram.value / 0.45359237
            self.pound = Pound(value: lbConvertedValue)
        default:
            fatalError("Unsupported")
        }
    }

    public let pound: Pound
    public let kilogram: Kilogram
    public var gram:  Gram {
        let val = kilogram.value * 1000.0
        return Gram(value: val)
    }
}

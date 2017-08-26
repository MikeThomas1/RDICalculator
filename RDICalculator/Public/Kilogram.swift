//
//  Kilogram.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Kilogram: Unit {
    public let value: Double
    public let singularUnitAbbreviation = "kg"
    
    public init(value: Double) {
        self.value = value
    }
}

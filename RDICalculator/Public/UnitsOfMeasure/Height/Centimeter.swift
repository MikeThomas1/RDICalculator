//
//  Centimeter.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Centimeter: Unit {
    public let value: Double
    public let singularUnitAbbreviation = "cm"
    
    public init(value: Double) {
        self.value = value
    }
}

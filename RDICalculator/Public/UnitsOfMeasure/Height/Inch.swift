//
//  Inch.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Inch: Unit {
    public let value: Double
    public let singularUnitAbbreviation = "inch"
    public var pluralUnitAbbreviation: String {
        return singularUnitAbbreviation + "es"
    }
    
    public init(value: Double) {
        self.value = value
    }
}

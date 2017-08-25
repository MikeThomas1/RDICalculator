//
//  Unit.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public protocol Unit {
    var value: Double { get }
    var displayValue: String { get }
    var singularUnitAbbreviation: String { get }
    var pluralUnitAbbreviation: String { get }
}

public extension Unit {
    // In most cases plural is singular + s. If this is not the case the conforming type should privde it's own impl.
    public var pluralUnitAbbreviation: String {
        return singularUnitAbbreviation + "s"
    }
    
    public var displayValue: String {
        let suffix = (value == 1) ? singularUnitAbbreviation : pluralUnitAbbreviation
        
        // TODO: abstract out formatter so it is only created once
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 1
        
        guard let valueString = formatter.string(for: value) else {
            return "Unknown"
        }
        
        return valueString + suffix
    }
}

public struct Kilogram: Unit {
    public let value: Double
    public let singularUnitAbbreviation = "kg"
}

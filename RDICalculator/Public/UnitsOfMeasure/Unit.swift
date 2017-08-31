//
//  Unit.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation

/**
 Represents a unit of measurement.
 */
public protocol Unit {
    /**
     Full name of the unit
     */
    var name: String { get }
    /**
     Value of the unit
     */
    var value: Double { get }
    /**
     Unit symbol/abbreviation, for example Pound would be `lb`
     */
    var symbol: String { get }
    
    /**
     Creates a unit from a `Double` value
     */
    init(value: Double)
    /**
     Creates a unit from a `Int` value
     */
    init(value: Int)
    /**
     Creates a unit from a `Float` value
     */
    init(value: Float)
}


//
//  UnitConverter.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/28/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


/**
 Converts units to and from any supported `Unit` for the UnitConverter.
 */
public protocol UnitConverter {
    associatedtype UnitType
    
    /**
     Creates a unit converter that accepts spefic unit types. For example a
     UnitConverter with UnitType HeightUnit could be initialized with any
     Object conforming to HeightUnit.
     */
    init(_ unit: UnitType)
}

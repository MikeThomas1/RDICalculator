//
//  RDIUnit.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/30/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


// TODO: rename. naming implies that it conform to `Unit` or make this conform to `Unit`?
public protocol RDIUnit {
    var totalCalories: Double { get }
    
    // TODO: Should percentage be considered a unit?
    var percentage: Double { get }
    
    // TODO: make a calorie unit
    // TODO: Create an Energy unit converter
    var calories: Double { get }
    var weight: Weight { get }
}

public extension RDIUnit {
    public var calories: Double {
        return totalCalories * (percentage / 100)
    }
}

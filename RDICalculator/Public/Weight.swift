//
//  Weight.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Weight: UnitConvertible {
    public typealias Imperial = Pound
    public typealias Metric = Kilogram
    
    public init(with unitOfMessure: UnitOfMeasure<Imperial, Metric>) {
        self.unitOfMessure = unitOfMessure
    }
    
    private let unitOfMessure: UnitOfMeasure<Imperial, Metric>
    
    public var lbs: Pound {
        switch unitOfMessure {
        case .imperial(let lb):
            return lb
        case .metric(let kg):
            let convertedValue = kg.value * 0.45359237
            return Pound(value: convertedValue)
        }
    }
    
    public var kgs: Kilogram {
        switch unitOfMessure {
        case .imperial(let lb):
            let convertedValue = lb.value * 0.45359237
            return Kilogram(value: convertedValue)
        case .metric(let kg):
            return kg
        }
    }
}

//
//  Height.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Height: UnitConverter {
    public init(_ unit: HeightUnit) {
        switch unit {
        case is Inch:
            self.inch = unit as! Inch
            
            let cmConvertedValue = inch.value * 2.54
            self.centimeter = Centimeter(value: cmConvertedValue)
            break
        case is Centimeter:
            self.centimeter = unit as! Centimeter
            
            let inConvertedValue = centimeter.value / 2.54
            self.inch = Inch(value: inConvertedValue)
        default:
            fatalError("Unsupported Unit")
        }
    }
    
    public let inch: Inch
    public let centimeter: Centimeter
}

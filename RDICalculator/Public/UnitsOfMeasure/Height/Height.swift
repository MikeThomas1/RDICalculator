//
//  Height.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Height {
    public init(_ inch: Inch) {
        self.inch = inch
        
        let cmConvertedValue = inch.value * 2.54
        self.cm = Centimeter(value: cmConvertedValue)
    }
    
    public init(_ centimeter: Centimeter) {
        self.cm = centimeter
        
        let inConvertedValue = centimeter.value / 2.54
        self.inch = Inch(value: inConvertedValue)
    }
    
    public let inch: Inch
    public let cm: Centimeter
}

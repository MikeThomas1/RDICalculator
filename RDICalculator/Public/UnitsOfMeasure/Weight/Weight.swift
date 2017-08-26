//
//  Weight.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Weight {
    public init(_ pound: Pound) {
        self.lbs = pound
        
        let kgConvertedValue = pound.value * 0.45359237
        self.kgs = Kilogram(value: kgConvertedValue)
    }
    
    public init(_ kilogram: Kilogram) {
        self.kgs = kilogram
        
        let lbConvertedValue = kilogram.value / 0.45359237
        self.lbs = Pound(value: lbConvertedValue)
    }
    
    public let lbs: Pound
    public let kgs: Kilogram
}

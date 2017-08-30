//
//  Protein.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/30/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Protein: RDIUnit {
    public let totalCalories: Double
    
    public let percentage = 15.0
    public var weight: Weight {
        let gs = calories * 0.25
        return Weight(Gram(value: gs))
    }
}


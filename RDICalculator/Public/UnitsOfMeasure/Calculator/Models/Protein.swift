//
//  Protein.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/30/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public struct Protein: RDIUnit {
    public static let percentage = 15.0
    
    public let calories: Double
    
    public var weight: Weight {
        let gs = calories * 0.25
        return Weight(Gram(value: gs))
    }
    
    public init(calories: Double) {
        self.calories = calories
    }
}


// TODO: create Float, Double, Int extensions and document

//
//  WeightUnit.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/28/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public protocol WeightUnit: Unit {}


// TODO: document this
public extension WeightUnit {
    var to: Weight {
        return Weight(self)
    }
}


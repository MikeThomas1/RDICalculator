//
//  Unit.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public protocol Unit {
    var name: String { get }
    var value: Double { get }
    var symbol: String { get }
    
    init(value: Double)
    init(value: Int)
    init(value: Float)
}


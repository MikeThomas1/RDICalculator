//
//  UnitConvertible.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public protocol UnitConvertible {
    associatedtype Imperial: Unit
    associatedtype Metric: Unit
    
    init(with unitOfMessure: UnitOfMeasure<Imperial, Metric>)
}

//
//  UnitConverter.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/28/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public protocol UnitConverter {
    associatedtype UnitType
    init(_ unit: UnitType)
}

//
//  UnitOfMeasure.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


public enum UnitOfMeasure<ImperialUnit: Unit, MetricUnit: Unit> {
    case imperial(ImperialUnit), metric(MetricUnit)
}

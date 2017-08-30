//
//  RDICalculator.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/30/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation

public class RDICalculator {
    public enum Gender {
        case male, female
        
        public func calories(kilogram: Kilogram, centimeter: Centimeter, age: Double, activity: ActivityLevel) -> Double {
            switch self {
            case .male:
                let cals   = (((66 + (13.7 * kilogram.value))) + (5 * centimeter.value)) - (6.8 * age)
                return cals * activity.calRewardRate
            case .female:
                let cals = (((655 + (9.6 * kilogram.value))) + (1.8 * centimeter.value)) - (4.7 * age)
                return cals * activity.calRewardRate
            }
        }
    }
    
    public enum ActivityLevel {
        case sedentary, lightlyActive, moderatelyActive, veryActive, extremelyActive
        
        public var calRewardRate: Double {
            switch self {
            case .sedentary:
                return 1.2
            case .lightlyActive:
                return 1.375
            case .moderatelyActive:
                return 1.55
            case .veryActive:
                return 1.725
            case .extremelyActive:
                return 1.9
            }
        }
    }
    
    public static func calculate(height: Height, weight: Weight, gender: Gender, age: Int, activity: ActivityLevel) -> RDI {
        let calories = gender.calories(kilogram: weight.kilogram, centimeter: height.centimeter, age: Double(age), activity: activity)
        return RDI(totalCalories: calories)
    }
}
//
//  RDI.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/25/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation

// TODO: rename. naming implies that it conform to `Unit` or make this conform to `Unit`?

public protocol RDIUnit {
    var totalCalories: Double { get }
    
    // TODO: Should percentage be considered a unit?
    var percentage: Double { get }
    
    // TODO: make a calorie unit
    // TODO: Create an Energy unit converter
    var calories: Double { get }
    var weight: Weight { get }
}

public extension RDIUnit {
    public var calories: Double {
        return totalCalories * (percentage / 100)
    }
}

public struct Carbohydrate: RDIUnit {
    public let totalCalories: Double
    
    public let percentage = 55.0
    public var weight: Weight {
        let gs = calories * 0.25
        return Weight(Gram(value: gs))
    }
}

public struct Protein: RDIUnit {
    public let totalCalories: Double
    
    public let percentage = 15.0
    public var weight: Weight {
        let gs = calories * 0.25
        return Weight(Gram(value: gs))
    }
}

public struct Fat: RDIUnit {
    public let totalCalories: Double
    
    public let percentage = 30.0
    public var weight: Weight {
        let gs = calories * 0.111
        return Weight(Gram(value: gs))
    }
}

public class RDI {
    public let carbohydrate: Carbohydrate
    public let protein: Protein
    public let fat: Fat
    
    public convenience init(totalCalories: Double) {
        let carb = Carbohydrate(totalCalories: totalCalories)
        let protein = Protein(totalCalories: totalCalories)
        let fat = Fat(totalCalories: totalCalories)
        self.init(carbohydrate: carb, protein: protein, fat: fat)
    }
    
    public required init(carbohydrate: Carbohydrate, protein: Protein, fat: Fat) {
        self.carbohydrate = carbohydrate
        self.protein = protein
        self.fat = fat
    }
}


public class RDICalculator {
    
    public static func calculate(height: Height, weight: Weight, gender: Gender, age: Int, activity: ActivityLevel) -> RDI {
        let calories = gender.calories(kilogram: weight.kilogram, centimeter: height.centimeter, age: Double(age), activity: activity)
        return RDI(totalCalories: calories)
    }
}

enum MeasurementSystem {
    case imperial, metric
}

// If you open a pull request to add `other`, or `trans(from: Gender, to: Gender)` I will make this repo private.
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

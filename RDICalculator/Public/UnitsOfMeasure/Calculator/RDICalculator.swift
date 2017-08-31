//
//  RDICalculator.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/30/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


/**
 This class handles calculating RDI (Recommended Daily Intake).
 */
public class RDICalculator {
    
    /**
     Gender, used to calculate RDI. Represents gender at birth.
     */
    public enum Gender {
        /**
         The male gender. XY chromosomes.
         */
        case male
        
        /**
         The female gender. XX chromosomes
         */
        case female
        
        internal func calories(kilogram: Kilogram, centimeter: Centimeter, age: Double, activity: ActivityLevel) -> Double {
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
    
    /**
     The activity level of the person of which to calculate RDI for.
     */
    public enum ActivityLevel {
        /**
         Little or no exercise, desk job
         */
        case sedentary
        
        /**
         Light exercise/sports 1-3 days/wk
         */
        case lightlyActive
        
        /**
         Moderate exercise/sports 3-5 days/wk
         */
        case moderatelyActive
        
        /**
         Hard exercise/sports 6-7 days/wk
         */
        case veryActive
        
        /**
         Hard daily exercise/sports & physical job
         */
        case extremelyActive
        
        internal var calRewardRate: Double {
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
    
    /**
     Calculates RDI (Recommended Daily Intake).
     
     RDI (Recommended Daily Intake) calculated based on height, weight, gender, age, and activity.
     
     - parameter height: The height of the person which to calculate RDI for. SeeAlso
     
     - parameter weight: The weight of the person which to calculate RDI for. SeeAlso
     
     - parameter gender: The gender of the person which to calculate RDI for. SeeAlso
     
     - parameter age: The age of the person which to calculate RDI for.
     
     - parameter activity: The activity level of the person which to calculate RDI for.
     
     - returns: A RDI object containing calculated RDI.
     */
    public static func calculate(height: Height, weight: Weight, gender: Gender, age: Int, activity: ActivityLevel) -> RDI {
        let totalCalories = gender.calories(kilogram: weight.kilogram, centimeter: height.centimeter, age: Double(age), activity: activity)
        let carbs: Carbohydrate = makeUnit(from: totalCalories)
        let protein: Protein = makeUnit(from: totalCalories)
        let fat: Fat = makeUnit(from: totalCalories)
        return RDI(totalCalories: totalCalories, carbohydrate: carbs, protein: protein, fat: fat)
    }
}

private extension RDICalculator {
    static func makeUnit<T: RDIUnit>(of rdiUnitType: T, from totalCalories: Double) -> T {
        let unit: T = makeUnit(from: totalCalories)
        return unit
    }
    
    static func makeUnit<T: RDIUnit>(from totalCalories: Double) -> T {
        let calories = totalCalories * T.percentage
        return T(calories: calories)
    }
}

//
//  RDI.swift
//  RDICalculator
//
//  Created by Michael Thomas on 8/30/17.
//  Copyright © 2017 Vault-Tec. All rights reserved.
//

import Foundation


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

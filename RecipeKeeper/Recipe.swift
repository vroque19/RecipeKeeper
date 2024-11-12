//
//  Recipe.swift
//  RecipeKeeper
//
//  Created by Vanessa Roque on 11/11/24.
//

import Foundation

struct Ingredient {
    let name: String
    let quantity: Double
    let measurement: String?
}


struct Recipe {
    let id: UInt8
    let name: String
    let ingredients: [Ingredient]
    let steps: [String]
}

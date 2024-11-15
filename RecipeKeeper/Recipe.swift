//
//  Recipe.swift
//  RecipeKeeper
//
//  Created by Vanessa Roque on 11/11/24.
//

import Foundation

struct Ingredient {
    var name: String = "ingredient name"
    var quantity: Float = 0.0
    var measurement: String = "measurement"
}


struct Recipe: Identifiable {
    var id: UInt8 = 0
    var name: String = "untitled recipe"
    var ingredients: [Ingredient] = []
    var steps: [String] = []
}

//
//  RecipeCard.swift
//  RecipeKeeper
//
//  Created by Vanessa Roque on 11/11/24.
//

import Foundation
import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe

    var body: some View {
        ZStack {
            Color(.gray)
            VStack {
                Text(recipe.name).font(.headline).multilineTextAlignment(.leading)
                Text("Ingredients:").font(.headline)
                ForEach(recipe.ingredients, id: \.name) { ingredient in
                    Text("\(ingredient.name):\(ingredient.quantity) \(String(describing: ingredient.measurement))")
                }
                Text("Steps:").font(.headline)
                ForEach(recipe.steps, id: \.self) { step in
                    Text(step)
                }
            }
        }
        .padding()
        .navigationTitle("Recipe Details")
    }
}



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
            VStack(alignment: .leading) {
                Text(recipe.name).font(.largeTitle).multilineTextAlignment(.center)
                Spacer()
                Text("Ingredients:").font(Font.custom("AmericanTypewriter", size: 32))
                ForEach(recipe.ingredients, id: \.name) { ingredient in
                    Text("\(ingredient.name):\(ingredient.quantity) \(String(describing: ingredient.measurement))")
                }
                Spacer()
                Text("Steps:").font(Font.custom("AmericanTypewriter", size: 32))
                ForEach(recipe.steps, id: \.self) { step in
                    Text(step).font(Font.custom("AmericanTypewriter", size: 16))
                }
                Spacer()
            }
        }
        .padding()
        .navigationTitle("Recipe Name")
        
    }
}

#Preview {
    RecipeCard(recipe: Recipe(name: "Example", ingredients: [Ingredient(name:"eggs", quantity: 2, measurement: "")],
                              steps: [
                                  "Wash and peel sweet potatos",
                                  "preheat oven to 400ºF",
                                  "Slice sweet potatoes, place on baking sheet, and bake 25 minutes",
                                  "cooking onions and meat"
                              ]))
}

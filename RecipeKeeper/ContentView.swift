//
//  ContentView.swift
//  RecipeKeeper
//
//  Created by Vanessa Roque on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var tatoNachos = Recipe(
        id: 1,
        name: "Sweet Potato Nachos",
        ingredients: [
            Ingredient(name: "ground beef", quantity: 1, measurement: "lbs"),
            Ingredient(name: "sweet potato", quantity: 1, measurement: nil),
            Ingredient(name: "yellow onion", quantity: 1, measurement: nil),
            Ingredient(name: "garlic clove", quantity: 3, measurement: nil)
        ],
        steps: [
            "Wash and peel sweet potatos",
            "preheat oven to 400ºF",
            "Slice sweet potatoes, place on baking sheet, and bake 25 minutes",
            "cooking onions and meat"
        ]
    )
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: RecipeCard(recipe: tatoNachos)) {
                    Text("Show Recipe")
                }
            }
        } .navigationTitle("Recipe List")
    }
}

#Preview {
    ContentView()
}

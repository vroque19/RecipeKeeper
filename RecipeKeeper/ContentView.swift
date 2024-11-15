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
        ingredients: [
            Ingredient(name: "ground beef", quantity: 1, measurement: "lbs"),
            Ingredient(name: "sweet potato", quantity: 1, measurement: ""),
            Ingredient(name: "yellow onions", quantity: 1, measurement: ""),
            Ingredient(name: "garlic cloves", quantity: 3, measurement: "")
        ],
        steps: [
            "Wash and peel sweet potatos",
            "preheat oven to 400ºF",
            "Slice sweet potatoes, place on baking sheet, and bake 25 minutes",
            "cooking onions and meat"
        ]
    )
    let recipes = [Recipe(id: 2, name: "ex1"), Recipe(id: 3, name: "ex2"),
                   Recipe(
                        name: "tatonachos",
                       ingredients: [
                           Ingredient(name: "ground beef", quantity: 1, measurement: "lbs"),
                           Ingredient(name: "sweet potato", quantity: 1, measurement: ""),
                           Ingredient(name: "yellow onions", quantity: 1, measurement: ""),
                           Ingredient(name: "garlic cloves", quantity: 3, measurement: "")
                       ],
                       steps: [
                           "Wash and peel sweet potatos",
                           "preheat oven to 400ºF",
                           "Slice sweet potatoes, place on baking sheet, and bake 25 minutes",
                           "cooking onions and meat"
                       ]
                   )]
    
    var body: some View {
        NavigationStack {
                List(recipes) { recipe in
                    NavigationLink(destination: RecipeCard(recipe: recipe)) {
                        Text(recipe.name)
                    }.foregroundColor(.black).font(Font.custom("AmericanTypewriter", size: 18))
                } .navigationTitle("My Recipes")
            }
        }
    }


#Preview {
    ContentView()
}

//
//  Favourites.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI

struct Favourites: View {
    
    var pizzaViewModel: PizzaViewModel
    
    var body: some View {
        NavigationStack {
            List {
                
            }
            .listStyle(.plain)
            .navigationTitle("Fast Moving Pizza's")
        }
    }
}

#Preview {
    Favourites(pizzaViewModel: PizzaViewModel())
}

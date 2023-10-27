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
                ForEach(pizzaViewModel.getFastMovingItems()) { pizza in
                    NavigationLink {
                        DetailedPizzaView(pizza: pizza)
                    } label: {
                        HStack {
                            Image(pizza.image)
                                .resizable()
                                .frame(width: 120, height: 80)
                                .scaledToFit()
                                .cornerRadius(20)
                            
                            Text(pizza.name)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fast Moving Pizza's")
        }
    }
}

#Preview {
    Favourites(pizzaViewModel: PizzaViewModel())
}

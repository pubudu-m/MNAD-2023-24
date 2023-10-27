//
//  PizzaList.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI

struct PizzaList: View {
    
    var pizzaViewModel: PizzaViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(pizzaViewModel.pizzaItems) { pizza in
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
                .onDelete(perform: { indexSet in
                    pizzaViewModel.deleteItem(indexSet: indexSet)
                })
            }
            .listStyle(.plain)
            .navigationTitle("All Pizza's")
        }
    }
}

#Preview {
    PizzaList(pizzaViewModel: PizzaViewModel())
}

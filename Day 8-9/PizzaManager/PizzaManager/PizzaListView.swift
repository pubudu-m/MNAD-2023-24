//
//  PizzaListView.swift
//  PizzaManager
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-26.
//

import SwiftUI

struct PizzaListView: View {
    
    @State var pizzaViewModel: PizzaViewModel = PizzaViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(pizzaViewModel.pizzaItems) { pizza in
                    NavigationLink {
                        DetailedPizzaView(pizzaViewModel: pizzaViewModel)
                    } label: {
                        HStack {
                            Image(pizza.imageName)
                                .resizable()
                                .frame(width: 120, height: 80)
                                .scaledToFit()
                                .cornerRadius(20)
                            
                            Text(pizza.name)
                        }
                    }
                }
                .onDelete(perform: { indexSet in
                    pizzaViewModel.removePizzaItem(indexSet: indexSet)
                })
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    PizzaListView()
}

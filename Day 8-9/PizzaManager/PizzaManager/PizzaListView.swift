//
//  PizzaListView.swift
//  PizzaManager
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-26.
//

import SwiftUI

struct PizzaListView: View {
    
    /*
     var pizzaViewModel: PizzaViewModel = PizzaViewModel() -- can be used to just access and display the data
     @State var pizzaViewModel: PizzaViewModel = PizzaViewModel() -- can be used to access and alter the data, should be use during very first declation
     @Bindable var pizzaViewModel: PizzaViewModel -- for all the other subviews, Check usage of DetailedPizzaView
     */
    
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

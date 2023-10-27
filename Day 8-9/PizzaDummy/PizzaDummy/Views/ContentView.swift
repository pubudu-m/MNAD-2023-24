//
//  ContentView.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI

struct ContentView: View {
    
    @State var pizzaViewModel: PizzaViewModel = PizzaViewModel()
    
    var body: some View {
        TabView {
            PizzaList(pizzaViewModel: pizzaViewModel)
                .tabItem {
                    Label("Home", systemImage: "list.bullet")
                }
            
            Favourites(pizzaViewModel: pizzaViewModel)
                .tabItem {
                    Label("Favourites", systemImage: "star")
                }
        }
    }
}

#Preview {
    ContentView()
}

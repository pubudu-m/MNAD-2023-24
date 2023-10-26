//
//  DetailedPizzaView.swift
//  PizzaManager
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-26.
//

import SwiftUI

struct DetailedPizzaView: View {
    
    @Bindable var pizzaViewModel: PizzaViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DetailedPizzaView(pizzaViewModel: PizzaViewModel())
}

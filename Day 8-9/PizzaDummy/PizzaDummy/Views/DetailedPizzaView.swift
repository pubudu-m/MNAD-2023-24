//
//  DetailedPizzaView.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI
import Observation

struct DetailedPizzaView: View {
    
    var pizza: PizzaModel
    
    var body: some View {
        NavigationStack {
            
        }
    }
}

#Preview {
    DetailedPizzaView(pizza: PizzaModel(name: "Meat Feast",
                                        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                        image: "meat_feast",
                                        type: .meat,
                                        isFastMoving: false))
}

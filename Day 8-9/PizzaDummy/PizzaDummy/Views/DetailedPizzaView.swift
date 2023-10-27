//
//  DetailedPizzaView.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI
import Observation

struct DetailedPizzaView: View {
    
    @Bindable var pizza: PizzaModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(pizza.image)
                    .resizable()
                    .frame(height: 300)
                    .scaledToFit()
                    .cornerRadius(20)
                
                Text(pizza.description)
                    .multilineTextAlignment(.leading)
                
                Toggle("Fast Moving Status", isOn: $pizza.isFastMoving)
                
                Spacer()
            }
            .padding()
            .navigationTitle(pizza.name)
            .navigationBarTitleDisplayMode(.inline)
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

//
//  ContentView.swift
//  PizzaManager
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-26.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                PizzaListView()
                
                Text("Sold out Pizza Amount - \(count)")
                    .font(.title2)
                    .bold()
                
                Button("Sold out") {
                    count += 1
                }
                .buttonStyle(.bordered)
                .tint(.green)
            }
            .padding()
            .navigationTitle("Pizza's")
        }
    }
}

#Preview {
    ContentView()
}

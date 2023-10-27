//
//  PizzaList.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI

struct PizzaList: View {
    
    var pizzaViewModel: PizzaViewModel
    @State var showAddNewPizzaView: Bool = false
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("", selection: $selectedTab) {
                    Text("All").tag(0)
                    Text("Meat").tag(1)
                    Text("Veggie").tag(2)
                }
                .pickerStyle(.segmented)
                
                if selectedTab == 0 {
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
                } else if selectedTab == 1 {
                    List {
                        ForEach(pizzaViewModel.getPizzaItems(type: .meat)) { pizza in
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
                } else {
                    List {
                        ForEach(pizzaViewModel.getPizzaItems(type: .veggie)) { pizza in
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
                }
            }
            .navigationTitle("All Pizza's")
            .sheet(isPresented: $showAddNewPizzaView, content: {
                AddNewPizza(pizzaViewModel: pizzaViewModel)
            })
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showAddNewPizzaView.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            })
        }
    }
}

#Preview {
    PizzaList(pizzaViewModel: PizzaViewModel())
}

//
//  PizzaViewModel.swift
//  PizzaManager
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-26.
//

import Foundation

@Observable class PizzaViewModel {
    
    var pizzaItems: [Pizza] = []
    
    init() {
        getPizzaItems()
    }
    
    func getPizzaItems() {
        let meatFeast = Pizza(name: "Meat Feast", imageName: "meat_feast")
        let vegSizzler = Pizza(name: "Veg Sizzler", imageName: "veg_sizzler")
        let hawaiian = Pizza(name: "Hawaiian", imageName: "hawaiian")
        
        pizzaItems.append(meatFeast)
        pizzaItems.append(vegSizzler)
        pizzaItems.append(hawaiian)
    }
    
    func removePizzaItem(indexSet: IndexSet) {
        pizzaItems.remove(atOffsets: indexSet)
    }
}

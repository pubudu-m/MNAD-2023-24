//
//  PizzaViewModel.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import Foundation
import Observation

@Observable final class PizzaViewModel {
    
    var pizzaItems: [PizzaModel] = []
    
    init() {
        addDummyItems()
    }
    
    func addDummyItems() {
        let meatFeast = PizzaModel(name: "Meat Feast",
                                   description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                   image: "meat_feast",
                                   type: .meat,
                                   isFastMoving: true)
        
        let vegSizzler = PizzaModel(name: "Veg Sizzler",
                                    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    image: "veg_sizzler",
                                    type: .veggie,
                                    isFastMoving: false)
        
        let hawaiian = PizzaModel(name: "Hawaiian",
                                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                  image: "hawaiian",
                                  type: .meat,
                                  isFastMoving: true)
        
        pizzaItems.append(meatFeast)
        pizzaItems.append(vegSizzler)
        pizzaItems.append(hawaiian)
    }
    
    func deleteItem(indexSet: IndexSet) {
        pizzaItems.remove(atOffsets: indexSet)
    }
}

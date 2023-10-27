//
//  PizzaModel.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import Foundation
import Observation

enum PizzaType: String, CaseIterable {
    case meat = "Meat"
    case veggie = "Veggie"
}

@Observable class PizzaModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let description: String
    let image: String
    let type: PizzaType
    var isFastMoving: Bool
    
    init(name: String, description: String, image: String, type: PizzaType, isFastMoving: Bool) {
        self.name = name
        self.description = description
        self.image = image
        self.type = type
        self.isFastMoving = isFastMoving
    }
}

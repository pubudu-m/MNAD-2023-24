//
//  Pizza.swift
//  PizzaManager
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-26.
//

import Foundation

struct Pizza: Identifiable {
    let id = UUID().uuidString
    let name: String
    let imageName: String
}

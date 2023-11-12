//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-11-09.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    @StateObject var todoViewModel = TodoViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(todoViewModel)
        }
    }
}

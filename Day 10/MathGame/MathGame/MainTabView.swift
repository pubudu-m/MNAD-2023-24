//
//  MainTabView.swift
//  Assessment
//
//  Created by Visal Rajapakse on 2023-03-20.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedColor: Color = Color("Sapphire")
    @State private var selectedFontSize: Double = 14.0
    
    var body: some View {
        // TabView content
        TabView {
            GameView(selectedColor: $selectedColor,
                     selectedFontSize: $selectedFontSize)
                .tabItem {
                    Label("Guess", systemImage: "checkmark.circle.badge.questionmark.fill")
                }
            
            SettingsView(selectedColor: $selectedColor,
                         selectedFontSize: $selectedFontSize)
                .tabItem {
                    Label("Settings", systemImage: "gear.circle.fill")
                }
        }
        .accentColor(selectedColor)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

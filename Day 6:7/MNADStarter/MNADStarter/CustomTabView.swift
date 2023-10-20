//
//  CustomTabView.swift
//  MNADStarter
//
//  Created by Visal Rajapakse on 2023-06-30.
//

import SwiftUI

// Associated Enum for currencies
enum Currencies: String, CaseIterable {
    case usd = "USD"
    case gbp = "GBP"
    case aud = "AUD"
    case cad = "CAD"
    case eur = "EUR"
}

// Dictionary to get the rate agains the LKR for a given currency
let rates = [
    "USD": 308.81,
    "GBP": 390.31,
    "AUD": 204.40,
    "CAD": 232.82,
    "EUR": 334.92
]

struct CustomTabView: View {
    @AppStorage("defaultPickerValue") var pickerValue: String = "USD"
    
    var body: some View {
        
        // Declare TabView
        TabView {
            HomeView(defaultPickerValue: $pickerValue)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SettingsView(pickerValue: $pickerValue)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

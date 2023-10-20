//
//  SettingsView.swift
//  MNADStarter
//
//  Created by Visal Rajapakse on 2023-06-30.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var pickerValue: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Settings")
                    .font(.largeTitle)
                    .bold()
                
                Text("Currency")
                    .font(.title2)
                    .bold()
                
                Picker("", selection: $pickerValue) {
                    ForEach(Currencies.allCases, id: \.self) { currency in
                        Text(currency.rawValue).tag(currency.rawValue)
                    }
                }
                .pickerStyle(.wheel)
            }
            
            Spacer()
            
            Button("Reset Settings") {
                pickerValue = "USD"
            }
            .buttonStyle(.bordered)
            .tint(.red)
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(pickerValue: .constant("USD"))
    }
}

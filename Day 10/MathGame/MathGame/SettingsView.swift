//
//  SettingsView.swift
//  Assessment
//
//  Created by Visal Rajapakse on 2023-03-20.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var sliderValue: Double = 14.0
    @State private var pickerValue: Int = 0
    
    @Binding var selectedColor: Color
    @Binding var selectedFontSize: Double
    
    var body: some View {
        // Settings content
        VStack(alignment: .leading, spacing: 20) {
            Text("Settings")
                .font(.largeTitle)
                .bold()
            
            Text("Font Size \(String(format: "%.2f", sliderValue)) PX")
            
            Slider(value: $sliderValue, in: 14...30)
                .onChange(of: sliderValue) { newValue in
                    selectedFontSize = sliderValue
                }
                .tint(selectedColor)

            HStack {
                Text("System Color")
                
                Picker("System Color", selection: $pickerValue) {
                    Text("Sapphire").tag(0)
                    Text("Ruby").tag(1)
                    Text("Emerald").tag(2)
                }
                .pickerStyle(.wheel)
                .onChange(of: pickerValue) { newValue in
                    switch newValue {
                    case 0:
                        selectedColor = Color("Sapphire")
                    case 1:
                        selectedColor = Color("Ruby")
                    default:
                        selectedColor = Color("Emerald")
                    }
                }
                
                Rectangle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(selectedColor)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(selectedColor: .constant(Color(.red)),
                     selectedFontSize: .constant(14.0))
    }
}

//
//  ContentView.swift
//  MNADStarter
//
//  Created by Visal Rajapakse on 2023-06-30.
//

import SwiftUI

struct HomeView: View {
    
    @State private var foriegnCurrency: String = ""
    @State private var LKRCurrency: String = ""
    @State private var pickerValue: String = "USD"
    @State private var isToggleOn: Bool = false
    
    @Binding var defaultPickerValue: String

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Currency Converter")
                    .font(.largeTitle)
                    .bold()
                
                HStack {
                    TextField("", text: $foriegnCurrency)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                        .onChange(of: foriegnCurrency) { newValue in
                            if !isToggleOn {
                                convert(newValue: newValue)
                            }
                        }
                        .disabled(isToggleOn)
                    
                    Picker("", selection: $pickerValue) {
                        ForEach(Currencies.allCases, id: \.self) { currency in
                            Text(currency.rawValue).tag(currency.rawValue)
                        }
                    }
                }
                
                HStack {
                    TextField("", text: $LKRCurrency)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                        .onChange(of: LKRCurrency) { newValue in
                            if isToggleOn {
                                reverseConvert(newValue: newValue)
                            }
                        }
                        .disabled(!isToggleOn)
                    
                    Text("LKR")
                }
                
                Toggle(isOn: $isToggleOn, label: {
                    Text("Switch Calculation")
                })
                
                // conditional UI rendering
//                if isToggleOn {
//                    Text("Toggle is on")
//                } else {
//                    Text("Toggle is off")
//                }
            }
            
            Spacer()
            
            Button("Reset Textfields") {
                foriegnCurrency.removeAll()
                LKRCurrency.removeAll()
            }
            .buttonStyle(.bordered)
            .tint(.red)
        }
        .padding()
        .onAppear {
            pickerValue = defaultPickerValue
        }
    }
    
    // MARK: USE THESE FUNCTIONS WITHIN A SWIFTUI `onChange()` VIEW MODIFIER
    private func convert(newValue: String) {
        // To convert from foreign currency (F) to LKR you need to multiply the value of currency by the rate (R):
        // LKR = F * R
        guard let newValue = Double(newValue),
              let rate = rates[pickerValue] else {
            return
        }
        
        let converetedValue = newValue * rate
        LKRCurrency = String(converetedValue)
    }
    
    private func reverseConvert(newValue: String) {
        // To convert LKR to a foreign currency you need to divide the value of currency by the rate (R):
        // F = LKR / R
        guard let newValue = Double(newValue),
              let rate = rates[pickerValue] else {
            return
        }
        
        let converetedValue = newValue / rate
        foriegnCurrency = String(converetedValue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(defaultPickerValue: .constant("USD"))
    }
}

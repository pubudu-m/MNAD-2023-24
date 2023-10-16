//
//  ContentView.swift
//  BMICalc
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-12.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: String = ""
    @State var weight: String = ""
    @State var bmiValue: Double = 0.0
    
    var body: some View {
        VStack {
            Text("BMI Calc")
                .font(.largeTitle)
                .bold()
            
            Text("Enter your height (M)")
            
            TextField("height", text: $height)
            
            Text("Enter your weight (KG)")
            
            TextField("weight", text: $weight)
            
            Button(action: {
                let h = Double(height) ?? 0.0
                let w = Double(weight) ?? 0.0
                
                bmiValue = w / (h * h)
                
            }, label: {
                Text("Check BMI")
            })
            
            Text("\(bmiValue)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

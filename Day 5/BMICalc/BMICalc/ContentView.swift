//
//  ContentView.swift
//  BMICalc
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-12.
//

import SwiftUI

struct ResultsView: View {
    @Binding var results: (bmi: String, advice: String, bgColor: Color)
    
    var body: some View {
        ZStack {
            results.bgColor.ignoresSafeArea()
            
            VStack {
                Text(results.bmi)
                    .font(.largeTitle)
                    .bold()
                
                Text(results.advice)
                    .font(.title2)
            }
        }
    }
}

struct ContentView: View {
    
    @State var height: String = ""
    @State var weight: String = ""
    
    // To handle error alert
    @State var showingAlert: Bool = false
    @State var showingSheet: Bool = false
    @State var results: (bmi: String, advice: String, bgColor: Color) = (bmi: "", advice: "", bgColor: .white)
    
    var body: some View {
        VStack(spacing: 20) {
            Text("BMI Calculator")
                .font(.largeTitle)
                .bold()
            
            VStack(alignment: .leading) {
                Text("Enter your height (M)")
                
                TextField("height", text: $height)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                
                Text("Enter your weight (KG)")
                
                TextField("weight", text: $weight)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
            }
            
            Button(action: {
                results = calcuateYourStats()
            }, label: {
                Text("Check BMI")
            })
            .buttonStyle(.borderedProminent)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Something went wrong"),
                      message: Text("Please check your inputs again"),
                      dismissButton: .default(Text("Try agin!")))
            }
            .sheet(isPresented: $showingSheet) {
                ResultsView(results: $results)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func calcuateYourStats() -> (bmi: String, advice: String, bgColor: Color) {
        guard let convertedHeight = Double(height), let convertedWeight = Double(weight) else {
            showingAlert.toggle()
            return (bmi: "", advice: "", bgColor: .white)
        }
        
        let bmiValue = convertedWeight / (convertedHeight * convertedHeight)
        var advice: String
        var bgColor: Color
        
        switch bmiValue {
        case 0...18.9:
            advice = "You're underweight, eat more!"
            bgColor = Color.blue
        case 18.9...24.9:
            advice = "You're doing good"
            bgColor = Color.green
        case 24.9...29.9:
            advice = "Eat less"
            bgColor = Color.yellow
        default:
            advice = "Hit the GYM soon"
            bgColor = Color.red
        }
        
        let formattedBMI = String(format: "%.2f", bmiValue)
        
        print("BMI: \(formattedBMI)")
        print("Advice: \(advice)")
        print("bgColor: \(bgColor)")
        
        showingSheet.toggle()
        return (bmi: formattedBMI, advice: advice, bgColor: bgColor)
    }
}

#Preview {
    ContentView()
}

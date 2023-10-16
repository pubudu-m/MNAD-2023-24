//
//  ContentView.swift
//  PropertyWrappers-1
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-12.
//

import SwiftUI

struct ContentView: View {
    
    @State var textString = "I'm a text"
    @State var backgroundColor = Color.cyan
    
    @State var textField: String = ""
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                TextField("Plcaegolder", text: $textField)
                
                Text(textString)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    textString = "I'm a new TEXT!"
                    backgroundColor = Color.red
                }, label: {
                    Text("Click Me")
                        .padding()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                })
                
                ReusableButtonView(textString2: $textString,
                                   backgroundColor2: $backgroundColor)
            }
        }
    }
}

#Preview {
    ContentView()
}

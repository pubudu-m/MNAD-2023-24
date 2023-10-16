//
//  ReusableButtonView.swift
//  PropertyWrappers-1
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-12.
//

import SwiftUI

struct ReusableButtonView: View {
    
    @Binding var textString2: String
    @Binding var backgroundColor2: Color
    
    var body: some View {
        Button(action: {
            textString2 = "from ReusableButtonView"
            backgroundColor2 = Color.green
        }, label: {
            Text("Reusable Button")
                .padding()
                .frame(width: 250, height: 50)
                .foregroundColor(.white)
                .background(.purple)
                .cornerRadius(10)
        })
    }
}

//#Preview {
//    ReusableButtonView()
//}

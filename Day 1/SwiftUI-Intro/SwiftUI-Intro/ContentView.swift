//
//  ContentView.swift
//  SwiftUI-Intro
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-09-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Vertical Layouting - Y Axis
        
//        VStack {
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 200, height: 200)
//                .foregroundColor(.green)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 200, height: 200)
//                .foregroundColor(.orange)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//        }
        
        // Horizontal Layouting - X Axis
        
//        HStack {
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 100, height: 100)
//                .foregroundColor(.green)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 100, height: 100)
//                .foregroundColor(.orange)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
//        }
        
        // Z Axis Layouting - on top of each others
        
//        ZStack {
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 300, height: 300)
//                .foregroundColor(.green)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 200, height: 200)
//                .foregroundColor(.orange)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
//        }

        // Scrollviews
        
        ScrollView {
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.green)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.orange)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.red)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.blue)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

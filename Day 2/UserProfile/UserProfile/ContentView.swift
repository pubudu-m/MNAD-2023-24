//
//  ContentView.swift
//  UserProfile
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image("profile-picture")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                
                Text("Ansel Adams")
                    .font(.title)
                    .bold()
                
                Text("There is nothing worse than a sharp image of a fuzzy concept")
                    .multilineTextAlignment(.center)
                
                HStack {
                    VStack {
                        Text("6")
                            .font(.title2)
                            .bold()
                        
                        Text("Posts")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("76K")
                            .font(.title2)
                            .bold()
                        
                        Text("Followers")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("4823")
                            .font(.title2)
                            .bold()
                        
                        Text("Following")
                    }
                }
                
                HStack {
                    Button(action: {
                        print("screen width -  \(UIScreen.main.bounds.width)")
                        print("image width - \(UIScreen.main.bounds.width * 0.4)")
                    }, label: {
                        Text("Follow")
                            .padding()
                            .frame(width: 150, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Message")
                            .padding()
                            .frame(width: 150, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            
                    })
                }
                
                VStack {
                    HStack {
                        Image("timeline-1")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45,
                                   height: 200)
                            .cornerRadius(20)
                        
                        Image("timeline-2")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45,
                                   height: 200)
                            .cornerRadius(20)
                    }
                    
                    HStack {
                        Image("timeline-3")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45,
                                   height: 200)
                            .cornerRadius(20)
                        
                        Image("timeline-4")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45,
                                   height: 200)
                            .cornerRadius(20)
                    }
                    
                    HStack {
                        Image("timeline-5")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45,
                                   height: 200)
                            .cornerRadius(20)
                        
                        Image("timeline-6")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45,
                                   height: 200)
                            .cornerRadius(20)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

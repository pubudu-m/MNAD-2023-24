//
//  UpdateUserDetails.swift
//  TodoApp
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-11-09.
//

import SwiftUI

struct UpdateUserDetails: View {
    
    @Binding var userName: String
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Username", text: $userName)
                    .textFieldStyle(.roundedBorder)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Update User Details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    UpdateUserDetails(userName: .constant("Pubudu"))
}

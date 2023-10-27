//
//  AddNewPizza.swift
//  PizzaDummy
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-10-27.
//

import SwiftUI

struct AddNewPizza: View {
    
    var pizzaViewModel: PizzaViewModel
    
    @State var pizzaName: String = ""
    @State var pizzaDescription: String = ""
    @State var pizzaImage: String = ""
    @State var pizzaType: PizzaType = .meat
    @State var fastMovingStatus: Bool = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form(content: {
                Section("Pizza Name") {
                    TextField("Name", text: $pizzaName)
                }
                
                Section("Pizza Description") {
                    TextField("", text: $pizzaDescription)
                        .frame(height: 200)
                }
                
                Section("Pizza Image Details") {
                    TextField("", text: $pizzaImage)
                        .autocorrectionDisabled()
                }
                
                Picker(selection: $pizzaType) {
                    ForEach(PizzaType.allCases, id: \.self) { type in
                        Text(type.rawValue).tag(type)
                    }
                } label: {
                    Text("Pizza Type")
                }

                Toggle("Fast Moving Status", isOn: $fastMovingStatus)
            })
            .navigationTitle("New Pizza Item")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        guard !pizzaName.isEmpty,
                                !pizzaDescription.isEmpty,
                              !pizzaImage.isEmpty else { return }
                        
                        pizzaViewModel.addNewPizza(name: pizzaName,
                                                   description: pizzaDescription,
                                                   image: pizzaImage,
                                                   type: pizzaType,
                                                   fastMovingStatus: fastMovingStatus)
                        
                        dismiss()
                    }
                }
            })
        }
    }
}

#Preview {
    AddNewPizza(pizzaViewModel: PizzaViewModel())
}

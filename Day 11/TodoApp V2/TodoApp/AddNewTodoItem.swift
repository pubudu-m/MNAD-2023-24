//
//  AddNewTodoItem.swift
//  TodoApp
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-11-09.
//

import SwiftUI

struct AddNewTodoItem: View {
    
    @EnvironmentObject var todoViewModel: TodoViewModel
    @State var todoTitle: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Title name", text: $todoTitle)
                    .textFieldStyle(.roundedBorder)
                
                Button("Save") {
                    guard !todoTitle.isEmpty else { return }
                    todoViewModel.addNewTask(title: todoTitle)
                    dismiss()
                }
                .buttonStyle(.bordered)
                .tint(.green)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Add New Todo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddNewTodoItem()
        .environmentObject(TodoViewModel())
}

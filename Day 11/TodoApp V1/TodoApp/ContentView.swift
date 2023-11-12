//
//  ContentView.swift
//  TodoApp
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-11-09.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var todoViewModel = TodoViewModel()
    @State var userName: String = "Pubudu"
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(todoViewModel.todoList) { todo in
                    HStack {
                        Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                        Text(todo.title)
                    }
                    .onTapGesture {
                        todoViewModel.updateCompleteStatus(todo: todo)
                    }
                }
                .onDelete(perform: { indexSet in
                    todoViewModel.deleteTodoItem(indexSet: indexSet)
                })
            }
            .padding()
            .listStyle(.plain)
            .navigationTitle("Hi, \(userName)")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink("Edit") {
                        UpdateUserDetails(userName: $userName)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink("Add") {
                        AddNewTodoItem(todoViewModel: todoViewModel)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

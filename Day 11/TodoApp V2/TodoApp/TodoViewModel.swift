//
//  TodoViewModel.swift
//  TodoApp
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-11-09.
//

import Foundation

class TodoViewModel: ObservableObject {
    
    @Published var todoList: [Todo] = [] {
        didSet {
            // updating todoList array every time it has been changed
            saveData()
        }
    }
    
    init() {
        getTodoItems()
    }
    
    // loading saved todo items from UserDefaults in-app-database
    func getTodoItems() {
        // step 1 - loading data from UserDefaults using an unique key
        let data = UserDefaults.standard.data(forKey: "todoList")
        
        // step 2 - decode loaded data to Todo.self format
        if let unwrappedData = data,
           let decodedData = try? JSONDecoder().decode([Todo].self, from: unwrappedData) {
            self.todoList = decodedData
        }
    }
    
    func addNewTask(title: String) {
        let todo = Todo(title: title, isCompleted: false)
        todoList.append(todo)
    }
    
    func deleteTodoItem(indexSet: IndexSet) {
        todoList.remove(atOffsets: indexSet)
    }
    
    func updateCompleteStatus(todo: Todo) {
        if let index = todoList.firstIndex(where: { $0.id == todo.id }) {
            todoList[index] = Todo(id: todo.id, title: todo.title, isCompleted: !todo.isCompleted)
        }
    }
    
    // saving todo item data to UserDefaults in-app-database
    func saveData() {
        // step 1 - try encoding data to json format
        // step 2 - save encoded data to UserDefaults with an unique key
        if let encodedData = try? JSONEncoder().encode(todoList) {
            UserDefaults.standard.set(encodedData, forKey: "todoList")
        }
    }
}

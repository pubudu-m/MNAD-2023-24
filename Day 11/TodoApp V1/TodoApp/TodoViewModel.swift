//
//  TodoViewModel.swift
//  TodoApp
//
//  Created by Idirimuni Pubudu Mihiranga De Silva on 2023-11-09.
//

import Foundation

class TodoViewModel: ObservableObject {
    
    @Published var todoList: [Todo] = []
    
    init() {
        getTodoItems()
    }
    
    // create dummy data
    func getTodoItems() {
        let taskOne = Todo(title: "Task 1", isCompleted: true)
        let taskTwo = Todo(title: "Task 2", isCompleted: false)
        
        todoList.append(taskOne)
        todoList.append(taskTwo)
    }
    
    // add new task
    func addNewTask(title: String) {
        let todo = Todo(title: title, isCompleted: false)
        todoList.append(todo)
    }
    
    // delete item
    func deleteTodoItem(indexSet: IndexSet) {
        todoList.remove(atOffsets: indexSet)
    }
    
    // update status
    func updateCompleteStatus(todo: Todo) {
        if let index = todoList.firstIndex(where: { $0.id == todo.id }) {
            todoList[index] = Todo(id: todo.id, title: todo.title, isCompleted: !todo.isCompleted)
        }
    }
}

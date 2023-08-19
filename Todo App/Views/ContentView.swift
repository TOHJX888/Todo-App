//
//  ContentView.swift
//  Todo App
//
//  Created by RGS on 29/7/23.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var todoManager = TodoManager()
    @State private var showNewTodoSheet = false
    
    var body: some View {
        NavigationStack {
            List($todoManager.todos, editActions: .all) { $todo in
                NavigationLink {
                    TodoDetailView(todo: $todo)
                } label: {
                    TodoRowView(todo: $todo)
                }
            }
            .navigationTitle("Todos")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        showNewTodoSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showNewTodoSheet) {
                NewTodoView(sourceArray: $todoManager.todos)
                    .presentationDetents([.medium, .large])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

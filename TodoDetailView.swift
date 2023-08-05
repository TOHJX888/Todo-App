//
//  TodoDetailView.swift
//  Todo App
//
//  Created by RGS on 5/8/23.
//

import SwiftUI

struct TodoDetailView: View {
    @Binding var todo: Todo
        
    
    
    
    var body: some View {
        Form {
            TextField("Enter your todo name", text: $todo.title)
            TextField("Enter your additional details", text: $todo.subtitle)
            Toggle("Is completed?", isOn: $todo.isCompleted)
        }
        .navigationTitle("Todo Detail")
        
        
        
        
        
        
        
        
    } //end of var body: some View
} //end of struct TodoDetailView


struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            TodoDetailView(todo:
                    .constant(Todo(title:"Do up this view", subtitle:"There's nothing here yet"))
            )
        }
    }
}

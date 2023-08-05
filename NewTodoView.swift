//
//  NewTodoView.swift
//  Todo App
//
//  Created by RGS on 5/8/23.
//

import SwiftUI

struct NewTodoView: View {
    
    @Binding var sourceArray: [Todo]
    @State private var todoTitle = ""
    @State private var todoSubtitle = ""
    @Environment(\.dismiss) var dismiss
    
    
    
    
    var body: some View {
        Form {
            Section("Info") {
                TextField("Title", text: $todoTitle)
                TextField("Subtitle", text: $todoSubtitle)
            }
            
            Section("Actions") {
                Button("Save") {
                    let newTodo = Todo(title: todoTitle, subtitle: todoSubtitle)
                    sourceArray.append(newTodo)
                    dismiss()
                }
                Button("Cancel", role: .destructive) {
                    dismiss()
                }
            }
            
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(sourceArray: .constant([]))
    }
}

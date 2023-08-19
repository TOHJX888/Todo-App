//
//  TodoRowView.swift
//  Todo App
//
//  Created by RGS on 5/8/23.
//

import SwiftUI

struct TodoRowView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        HStack {
            Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle" )
                .onTapGesture {
                    todo.isDone.toggle()
                }
            VStack(alignment: .leading) {
                Text(todo.title)
                    .strikethrough(todo.isDone)
                if !todo.subtitle.isEmpty {
                    Text(todo.subtitle)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}

struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoRowView(todo: .constant(Todo(title: "Fake title todo")))
    }
}

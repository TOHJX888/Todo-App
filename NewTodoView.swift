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
    
    
    
    
    var body: some View {
        Form {
            Section("Info") {
                TextField("Title", text: $todoTitle)
                TextField("Subtitle", text: $todoSubtitle)
            }
            
            Section("Actions") {
                Button("Save") {
                    
                }
                Button("Cancel", role: .destructive) {
                    
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

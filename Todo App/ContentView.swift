//
//  ContentView.swift
//  Todo App
//
//  Created by RGS on 29/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "Buy 20kg of Nutella"),
        Todo(title: "Call a courier for 20kg of Nutella", subtitle:"Might need a van"),
        Todo(title: "Pack 20kg of Nutella in office"),
        Todo(title: "Buy health insurance"),
        Todo(title: "Eat 20kg of Nutella"),
        Todo(title: "Go to a doctor"),
        Todo(title: "Regret life decisions"),
    ]
    
    var body: some View {
        NavigationStack{
            List($todos) { $todo in
                NavigationLink {
                    TodoDetailView(todo: $todo)
                } label: {
                    HStack{
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                        VStack(alignment: .leading){
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                            if !todo.subtitle.isEmpty{
                                Text(todo.subtitle)
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                            }
                        } //end of VStack
                    } //end of hstack
                }// end of label
                } //end of list
            } //end of navigationstack
            .navigationTitle("Todos")
            
            
            
        } //end of var body : some view
        
        
        
        
        
        
        
    } //end of struct contentview
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

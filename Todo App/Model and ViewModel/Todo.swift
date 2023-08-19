//
//  Todo.swift
//  Todo App
//
//  Created by RGS on 29/7/23.
//

import Foundation

struct Todo: Identifiable, Codable {
    
    var id = UUID()
    var title: String
    var subtitle: String = ""
    var isDone: Bool = false
    
}

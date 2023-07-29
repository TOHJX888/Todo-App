//
//  Todo.swift
//  Todo App
//
//  Created by RGS on 29/7/23.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID() // Universally Unique IDentifier
    var title: String
    var subtitle = " "
    var isCompleted = false
    
}

//
//  TodoItem.swift
//  todoApp2024
//
//  Created by Jose Garcia on 6/6/24.
//

import Foundation

struct TodoItem: Identifiable {
    var id = UUID()
    var isDone = false
    var text: String
}

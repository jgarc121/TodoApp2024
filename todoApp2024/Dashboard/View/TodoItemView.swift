//
//  TodoItemView.swift
//  todoApp2024
//
//  Created by Jose Garcia on 6/6/24.
//

import SwiftUI

struct TodoItemView: View {
    @Binding var item: TodoItem
    
    var body: some View {
        Button {
            item.isDone.toggle()
        } label: {
            HStack {
                Image(item.isDone ? "selectedItem": "unselectedItem")
                Text("\(item.text)")
            }.padding()
        }.buttonStyle(.plain)
    }
}

struct TodoItemView_Previews: PreviewProvider {
    static var previews: some View {
        let item: TodoItem = TodoItem(text: "Example")
        TodoItemView(item: .constant(item))
    }
}

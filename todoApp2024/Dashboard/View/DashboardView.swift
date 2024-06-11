//
//  Dashboard.swift
//  todoApp2024
//
//  Created by Jose Garcia on 6/6/24.
//

import SwiftUI

struct DashboardView: View {
    
    @State var todoItems: [TodoItem] = [TodoItem(text: "Eggs"),
                                        TodoItem(text: "Tomatoes"),
                                        TodoItem(text: "Avocado"),
                                        TodoItem(text: "Egg noodles"),
                                        TodoItem(text: "Scampi"),
                                        TodoItem(text: "Orange juice"),
                                        TodoItem(text: "Apples")]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Groceries")
                    .bold()
                    .font(.system(size: 38))
                    .foregroundColor(.blue)
                    .padding()
                    
                
                LazyVStack(alignment: .leading) {
                    
                    ForEach($todoItems) { item in
                        
                        if !item.isDone.wrappedValue {
                            TodoItemView(item: item)
                        }
                        
                    }
                    
                    
                    Text("Completed")
                        .font(.system(size: 16))
                        .padding()
                    ForEach($todoItems) { item in
                        
                        if item.isDone.wrappedValue {
                            TodoItemView(item: item)
                        }
                        
                    }
                }

            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

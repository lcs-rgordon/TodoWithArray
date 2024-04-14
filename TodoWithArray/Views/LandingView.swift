//
//  ContentView.swift
//  TodoWithArray
//
//  Created by Russell Gordon on 2024-04-13.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // Whatever is being typed as a new to-do is being added
    @State var newItemDescription = ""
    
    // Keep track of all the to-do items that have been created
    @State var todos: [TodoItem] = []
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List(todos) { todo in
                    ItemView(currentItem: todo)
                }
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD") {
                        // Add the new to-do item
                        let newTodo = TodoItem(
                            title: newItemDescription,
                            done: false
                        )
                        // Add to end of the array
                        todos.append(newTodo)
                        // Print the contents of the array to the console
                        print(todos)
                    }
                    .font(.caption)
                }
                .padding(20)

            }
            .navigationTitle("To do")

        }
    }
}

#Preview {
    LandingView()
}

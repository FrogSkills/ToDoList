//
//  ContentView.swift
//  ToDoList
//
//  Created by Miguel on 6/23/25.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Build Apps",
                 "Change my World",
                 "Bring the Awesome",
                 "Take a Vacation"]
    
    @State private var sheetIsPresented = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)
                }
                
//                ForEach(0..<100, id: \.self) { number in
//                    NavigationLink {
//                        DetailView(passedValue: "Item \(number)")
//                    } label: {
//                        Text("Item \(number)")
//                    }
//                }
            }
            .navigationTitle("To Do List") // Back button takes this name automatically.
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
            // Below we can use fullScreenCover instead of sheet, but apple prefers sheets and would be best for future updates.
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: "")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button() {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}

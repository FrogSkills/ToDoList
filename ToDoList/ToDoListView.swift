//
//  ContentView.swift
//  ToDoList
//
//  Created by Miguel on 6/23/25.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Show the New View!")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        
    }
}

#Preview {
    ToDoListView()
}

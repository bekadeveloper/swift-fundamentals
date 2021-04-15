//
//  ContentView.swift
//  Shared
//
//  Created by Begzod Bakhriddinov on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleStatus = true
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                }
                
                Section(header: Text("To Do Tasks")) {
                    ForEach(toDoArray) { item in
                        NavigationLink(destination: Text(item.task)) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .navigationBarTitle(Text("📔To Do List"))
            .navigationBarItems(leading: EditButton(), trailing: Button(action: addItem) {
                Text("Add")
            })
        }
    }
}

func addItem() {
    // adding items goes here
}

func deleteItem(at offsets: IndexSet) {
    // deleting items goes here
}

func moveItem(from position: IndexSet, to destination: Int) {
    // moving items goes here
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

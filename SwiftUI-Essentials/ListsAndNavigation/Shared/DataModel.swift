//
//  DataModel.swift
//  ListsAndNavigation
//
//  Created by Begzod Bakhriddinov on 15/04/21.
//

import Foundation

struct ToDoItem: Identifiable {
    
    var id = UUID()
    var task: String
    var imageName: String
    
}

var toDoArray: [ToDoItem] = [ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"), ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"), ToDoItem(task: "Wash the car", imageName: "car.fill")]

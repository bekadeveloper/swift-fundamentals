//
//  AddNewCarView.swift
//  ListNavDemo
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import SwiftUI

struct AddNewCar: View {
    @EnvironmentObject var carStore: CarStore
    
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var isHybrid: Bool = false
        
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                
                Toggle(isOn: $isHybrid) {
                    Text("Hybrid").font(.headline)
                }
            }
            .padding()
            
            Button(action: addNewCar) {
                Text("Add Car")
            }
        }
    }
    
    func addNewCar() {
        let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_s")
        
        carStore.cars.append(newCar)
    }
}

struct DataInput: View {
    
    var title: String
    @Binding var userInput: String

    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title).font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCar()
            .preferredColorScheme(.light)
            .environmentObject(CarStore(cars: carData))
    }
}

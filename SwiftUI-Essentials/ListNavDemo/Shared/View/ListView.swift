//
//  ListView.swift
//  ListNavDemo
//
//  Created by Begzod Bakhriddinov on 16/04/21.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var carStore: CarStore
    @State private var showAddCar = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(carStore.cars) { car in
                    NavigationLink(destination: CarDetail(selectedCar: car)) {
                        ListCell(car: car)
                    }
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: Button(action: {showAddCar.toggle()}) {
                Text("Add")
            }, trailing: EditButton())
        }
        .sheet(isPresented: $showAddCar) {
            AddNewCar()
        }
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
    
    func deleteItems(at offsets: IndexSet) {
        carStore.cars.remove(atOffsets: offsets)
    }
}

struct LIstView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .preferredColorScheme(.light)
            .environmentObject(CarStore(cars: carData))
    }
}

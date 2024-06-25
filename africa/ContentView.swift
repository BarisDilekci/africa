//
//  ContentView.swift
//  africa
//
//  Created by Barış Dilekçi on 25.06.2024.
//

import SwiftUI

struct ContentView: View {
    let animals : [AnimalsModel] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                 AnimalListView(animal: animal)
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
        
    }
}

#Preview {
    ContentView()
}

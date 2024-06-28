//
//  InsetFactView.swift
//  africa
//
//  Created by Barış Dilekçi on 28.06.2024.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    
    let animals : AnimalsModel
    //MARK: - LIFE CYCLE
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animals.fact, id: \.self) { animal in
                 Text(animal)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealWidth: 168, maxHeight: 180)

        }
        .frame(height: 190)

    }
}

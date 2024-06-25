//
//  AnimalListView.swift
//  africa
//
//  Created by Barış Dilekçi on 26.06.2024.
//

import SwiftUI

struct AnimalListView: View {
    
    
    let animal : AnimalsModel
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                  RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct AnimalListView_provider: PreviewProvider {
    static var previews: some View {
        let animals : [AnimalsModel] = Bundle.main.decode("animals.json")
        AnimalListView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

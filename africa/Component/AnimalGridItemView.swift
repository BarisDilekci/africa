//
//  AnimalGridItemView.swift
//  africa
//
//  Created by Barış Dilekçi on 5.07.2024.
//


import SwiftUI

struct AnimalGridItemView: View {
  // MARK: - PROPERTIES
  
  let animal: AnimalsModel

  // MARK: - BODY

  var body: some View {
    Image(animal.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

// MARK: - PREVIEW

struct AnimalGridItemView_Previews: PreviewProvider {
  static let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    AnimalGridItemView(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

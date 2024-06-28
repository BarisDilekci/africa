//
//  ExternalWeblinkView.swift
//  africa
//
//  Created by Barış Dilekçi on 28.06.2024.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let animals: AnimalsModel

  // MARK: - BODY

  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()
        
        Group {
          Image(systemName: "arrow.up.right.square")
          
          Link(animals.name, destination: (URL(string: animals.link) ?? URL(string: "https://wikipedia.org"))!)
        }
        .foregroundColor(.accentColor)
      } //: HSTACK
    } //: BOX
  }
}

// MARK: - PREIVEW

struct ExternalWeblinkView_Previews: PreviewProvider {
  static let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    ExternalWeblinkView(animals: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

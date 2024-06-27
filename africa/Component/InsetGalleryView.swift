//
//  InsetGalleryView.swift
//  africa
//
//  Created by Barış Dilekçi on 27.06.2024.
//

import SwiftUI

struct InsetGalleryView: View {
    
    //MARK: - PROPERTIES
    
    let animals : AnimalsModel
    //MARK: - LIFE CYCLE
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center,spacing: 15, content: {
                ForEach(animals.gallery, id: \.self) { item in
                 Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(13)
                }
            })
        }
    }
}

struct InsetGalleryView_provider: PreviewProvider {
    static var previews: some View {
        let animals : [AnimalsModel] = Bundle.main.decode("animals.json")
        InsetGalleryView(animals: animals[0])
 
    }
}

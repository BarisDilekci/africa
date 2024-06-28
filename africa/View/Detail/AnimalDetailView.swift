//
//  AnimalDetailView.swift
//  africa
//
//  Created by Barış Dilekçi on 27.06.2024.
//

import SwiftUI

struct AnimalDetailView: View {
    
    // MARK: - PROPERTIES
    let animal : AnimalsModel
    
    
    //MARK: - LIFE CYCLE
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20, content: {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animals: animal)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know?")
                    InsetFactView(animals: animal)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All About \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWeblinkView(animals: animal)
                }
                .padding(.horizontal)
                 
            })
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)
        }
    }
}


struct AnimalDetailView_provider: PreviewProvider {
    static var previews: some View {
        let animals : [AnimalsModel] = Bundle.main.decode("animals.json")
        AnimalDetailView(animal: animals[1])
            .previewDevice("iPhone 11")
 
    }
}

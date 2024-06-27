//
//  HeadingView.swift
//  africa
//
//  Created by Barış Dilekçi on 27.06.2024.
//

import SwiftUI

struct HeadingView: View {
    
    //MARK: - PROPERTIES
    
    var headingImage : String
    var headingText : String
    
    //MARK: LIFE CYCLE
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_provider: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in picture")
 
    }
}

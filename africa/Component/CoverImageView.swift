//
//  CoverImageView.swift
//  africa
//
//  Created by Barış Dilekçi on 25.06.2024.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - PROPERTIES
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: - LIFE
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}

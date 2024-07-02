//
//  GalleryView.swift
//  africa
//
//  Created by Barış Dilekçi on 25.06.2024.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    
    //MARK: - LIFE CYCLE
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}

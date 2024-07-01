//
//  TabView.swift
//  africa
//
//  Created by Barış Dilekçi on 25.06.2024.
//

import SwiftUI

struct TabController: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.2x2")
                        Text("Browse")
                    }
                }
            
            VideoListView()
                .tabItem {
                    VStack {
                        Image(systemName: "play.rectangle")
                        Text("Watch")
                    }
                }
            
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Locations")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                }
        }


    }
}

#Preview {
    TabController()
}

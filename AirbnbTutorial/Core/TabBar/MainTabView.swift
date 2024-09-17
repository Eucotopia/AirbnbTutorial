//
//  MainTabView.swift
//  AirbnbTutorial
//
//  Created by 李伟 on 2024/9/17.
//

import SwiftUI

struct MainTabView:View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore",systemImage: "magnifyingglass")
                }
            WishlistsView()
                .tabItem {
                    Label("Wishlists", systemImage: "heart")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}


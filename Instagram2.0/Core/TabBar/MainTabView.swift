//
//  MainTabView.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Uplaod Post")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notofication")
                .tabItem{
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }.accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

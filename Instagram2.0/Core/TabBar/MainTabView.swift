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
            
            UploadPostView()
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notofication")
                .tabItem{
                    Image(systemName: "heart")
                }
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
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

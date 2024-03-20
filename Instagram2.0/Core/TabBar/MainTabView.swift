//
//  MainTabView.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    let user: User
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
                .onAppear {
                    selectedIndex = 0
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear {
                    selectedIndex = 1
                }
                .tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)
                .tabItem{
                    Image(systemName: "plus.square")
                }
                .onAppear {
                    selectedIndex = 2
                }
                .tag(2)
            
            Text("Notofication")
                
                .tabItem{
                    Image(systemName: "heart")
                }
                .onAppear {
                    selectedIndex = 3
                }
                .tag(3)
            
            CurrentUserProfileView(user: user)
                .tabItem{
                    Image(systemName: "person")
                }
                .onAppear {
                    selectedIndex = 4
                }
                .tag(4)
                
            
        }.accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(user: User.MOCK_USERS[0])
    }
}

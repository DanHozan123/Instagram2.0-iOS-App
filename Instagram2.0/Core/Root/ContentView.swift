//
//  ContentView.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    var body: some View {
        
        if viewModel.userSession == nil {
            LoginView()
                .environmentObject(registrationViewModel)
        } else if let currentuser = viewModel.currentUser {
            MainTabView(user: currentuser)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

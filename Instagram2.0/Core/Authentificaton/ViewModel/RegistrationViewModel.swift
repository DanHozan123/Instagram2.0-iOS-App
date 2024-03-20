//
//  Registration.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 19.03.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
       try await AuthService.shared.createUser(withEmail: email, password: password, username: username)
       
    }
    
}

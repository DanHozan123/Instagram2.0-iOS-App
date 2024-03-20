//
//  ViewModel.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 19.03.2024.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fethAllUsers()
    }
    
}

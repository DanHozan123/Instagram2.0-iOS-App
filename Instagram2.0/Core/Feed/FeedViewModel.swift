//
//  FeedViewModel.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 20.03.2024.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()

    init () {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
    
}


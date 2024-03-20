//
//  PostGridViewModel.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 20.03.2024.
//

import Foundation

class PostGridViewModel: ObservableObject {
    private var user: User
    @Published var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task { try await fetchUserPosts() }
    }
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostService.fethFeedPosts(uid: user.id)
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
    
}

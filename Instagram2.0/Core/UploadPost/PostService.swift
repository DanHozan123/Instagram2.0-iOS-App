//
//  PostService.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 20.03.2024.
//

import Foundation
import Firebase

struct PostService {
    
    
    static func fetchFeedPosts() async throws -> [Post] {
        let snapShot = try await Firestore.firestore().collection("posts").getDocuments()
        var posts = try snapShot.documents.compactMap({ try $0.data(as: Post.self) })
        
        for i in 0 ..< posts.count {
            let postUser = try await UserService.fetchUser(withUid: posts[i].ownerUid)
            posts[i].user = postUser
        }
        
        return posts
    }

    static func fethFeedPosts(uid: String) async throws -> [Post] {
        let snapShot = try await Firestore.firestore().collection("posts").whereField("ownerUid", isEqualTo: uid).getDocuments()
        
        return try snapShot.documents.compactMap({ try $0.data(as: Post.self) })
        
      
        
    }
    
}

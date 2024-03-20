//
//  userService.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 19.03.2024.
//

import Foundation
import Firebase


struct UserService {
   
    @MainActor
    static func fethAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
    }
    
    static func fetchUser(withUid id: String) async throws -> User{
        let snapshot = try await Firestore.firestore().collection("users").document(id).getDocument()
        return try snapshot.data(as: User.self)
    }
}

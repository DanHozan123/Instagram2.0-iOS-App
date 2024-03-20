//
//  User.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Codable, Hashable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUser = Auth.auth().currentUser?.uid else { return false }
        return currentUser == id
    }
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "daniel", profileImageUrl: nil, fullname: "Daniel Day-Lewis", bio: "Bio description", email: "daniel@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "natalie", profileImageUrl: nil, fullname: "Natalie Portman", bio: "Bio description", email: "natalie@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "jakuin", profileImageUrl: nil, fullname: "Joaquin Phoenix", bio: "Bio description", email: "joaquin@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "matthew", profileImageUrl: nil, fullname: "Matthew McConaughey", bio: "Bio description", email: "matthew@gmail.com"),
    ]
}

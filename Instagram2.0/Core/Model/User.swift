//
//  User.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "daniel", profileImageUrl: "Daniel Day-Lewis", fullname: "Daniel Day-Lewis", bio: "Bio description", email: "daniel@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "natalie", profileImageUrl: "Natalie Portman", fullname: "Natalie Portman", bio: "Bio description", email: "natalie@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "jakuin", profileImageUrl: "Jakuin Phoenix", fullname: "Jakuin Pheonix", bio: "Bio description", email: "jakuin@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "matthew", profileImageUrl: "Matthew McConaughey", fullname: "Matthew McConaughey", bio: "Bio description", email: "matthew@gmail.com"),
    ]
}

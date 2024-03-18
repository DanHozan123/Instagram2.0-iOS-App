//
//  Post.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import Foundation

struct Post: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
    
}

extension Post {
    static let MOCK_POSTS: [Post] = [
        
        //Daniel Day-Lewis
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[0].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Daniel Day-Lewis2",
              timestamp: Date(),
              user: User.MOCK_USERS[0]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[0].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Daniel Day-Lewis3",
              timestamp: Date(),
              user: User.MOCK_USERS[0]),
        
        //Natalie Portman
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[1].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Natalie Portman2",
              timestamp: Date(),
              user: User.MOCK_USERS[1]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[1].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Natalie Portman3",
              timestamp: Date(),
              user: User.MOCK_USERS[1]),
        
        //Jakuin Phoenix
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[2].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Jakuin Phoenix2",
              timestamp: Date(),
              user: User.MOCK_USERS[2]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[2].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Jakuin Phoenix3",
              timestamp: Date(),
              user: User.MOCK_USERS[2]),
        
        //Jakuin Phoenix
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[3].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Matthew McConaughey2",
              timestamp: Date(),
              user: User.MOCK_USERS[3]),
        
        .init(id: NSUUID().uuidString,
              ownerUid: User.MOCK_USERS[3].id,
              caption: "This is some caption description from mock data",
              likes: 10, imageUrl: "Matthew McConaughey3",
              timestamp: Date(),
              user: User.MOCK_USERS[3])
    ]
}

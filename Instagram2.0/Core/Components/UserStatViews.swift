//
//  UserStatViews.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI

struct UserStatViews: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct UserStatViews_Previews: PreviewProvider {
    static var previews: some View {
        UserStatViews(value: 3, title: "posts")
    }
}

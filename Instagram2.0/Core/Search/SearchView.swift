//
//  SearchView.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    
                    ForEach(0 ... 15, id: \.self) { user in
                        HStack {
                            Image("Daniel Day-Lewis1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading) {
                                Text("daniel")
                                    .fontWeight(.semibold)
                                Text("Daniel Day-Lewis")
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

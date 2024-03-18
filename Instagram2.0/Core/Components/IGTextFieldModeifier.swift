//
//  IGTextFieldModeifier.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI

struct IGTextFieldModeifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
    
   
    
}


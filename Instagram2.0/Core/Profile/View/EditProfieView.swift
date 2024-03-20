//
//  EditProfieView.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 19.03.2024.
//

import SwiftUI
import PhotosUI

struct EditProfieView: View {
    
    @Environment(\.dismiss) var dismiss

    @StateObject var viewModel: EditProfileViewModel
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    
    var body: some View {
        VStack {
            // toolbar
            VStack {
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        Task { try await viewModel.updateUserData()}
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                
                Divider()
            }
            
            // edit profile pick
            
            PhotosPicker(selection: $viewModel.selectedImage) {
                VStack {
                    if let image = viewModel.profileImage {
                        image
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                    } else {
                        CircularProfileImageView(user: viewModel.user, size: ProfileImageSize.large)
                    }
                    
                    
                    Text("Edit Profile Image")
                        .font(.footnote)
                        .fontWeight(.semibold)
                
                    Divider()
                }
                
                
            }.padding()
            
            // edit bio
            
            VStack(spacing: 20) {
                TextField("Enter your name..", text: $viewModel.fullname)
                TextField("Enter your bio", text: $viewModel.bio)
            }.padding()
            
            Spacer()
        }
    }
}

struct EditProfieView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfieView(user: User.MOCK_USERS[0])
    }
}

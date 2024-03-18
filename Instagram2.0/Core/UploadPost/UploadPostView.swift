//
//  UploadPostView.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption: String = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel =  UploadPostViewModel()
    
    var body: some View {
        VStack {
            
            // action tool bar
            HStack {
                Button {
                    print("upload")
                } label: {
                    Text("Cancel")
                }

                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
                
                
            }
            .padding(.horizontal)
            
            // post image and caption
            HStack {
                Image("Daniel Day-Lewis")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
        .onAppear() {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}

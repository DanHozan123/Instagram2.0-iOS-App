//
//  UploadPostViewModel.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 18.03.2024.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItem: selectedImage)} }
    }
    
    @Published var profileImage: Image?
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else { return }
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
    
}

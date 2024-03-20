//
//  ImageUploader.swift
//  Instagram2.0
//
//  Created by Dan Hozan on 20.03.2024.
//

import FirebaseStorage
import UIKit


struct ImageUploader {
    static func uploadImage(image: UIImage) async throws -> String? {
        
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {
            return nil
        }
        
        let imageName = UUID().uuidString
        let ref = Storage.storage().reference().child("profile_images").child(imageName)
        
        do {
            let _ = try await ref.putDataAsync(imageData)
            
            let url = try await ref.downloadURL()
            return url.absoluteString
        } catch {
            print("Error uploading image:", error.localizedDescription)
            throw error
        }
    }
}

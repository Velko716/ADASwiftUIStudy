//
//  OtherViewModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import Foundation
import SwiftUI

@Observable
class OtherViewModel: ImageHandling {
    
    var isImagePickerPresented: Bool = false
    
    internal var images: [UIImage] = [] // 같은 모듈
    
    
    func addImage(_ images: UIImage) {
        self.images.append(images)
    }
    
    func removeImage(at index: Int) {
        guard !self.images.isEmpty else { return }
        self.images.remove(at: index)
    }
    
    func getImages() -> [UIImage] {
        self.images
    }
    
    func appendImage(_ image: UIImage) {
        images.append(image)
    }
    
    
}

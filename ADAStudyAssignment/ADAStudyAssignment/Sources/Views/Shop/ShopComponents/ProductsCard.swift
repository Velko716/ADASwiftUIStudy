//
//  ProductsCard.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/14/25.
//

import SwiftUI

struct ProductsCard: View {
    let image: String
    let label: String
    
    var body: some View {
        VStack(spacing: 10) {
            
            Image(image)
            
            Text(label)
                .font(.mainTextSemiBold13)
        } //: VSTACK
    }
}

#Preview {
    ZStack {
        Color.white01
        ProductsCard(image: "tumbler", label: "텀블러")
    }
}

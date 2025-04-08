//
//  RecommendedMenuComponent.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/5/25.
//

import SwiftUI

struct CircleImageCard: View {
    let image: String
    let title: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(image)
                .frame(width: 130, height: 130)
            
            Text(title)
                .font(.mainTextSemiBold14)
                .foregroundStyle(Color.black02)
        } //:VSTACK
        
        
    }
}

#Preview {
    CircleImageCard(image: "espressoConPanna", title: "에스프레소 콘파나")
}

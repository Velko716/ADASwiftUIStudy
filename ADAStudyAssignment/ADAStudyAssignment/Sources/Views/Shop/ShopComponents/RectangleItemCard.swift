//
//  rectangleItemCard.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/15/25.
//

import SwiftUI

struct RectangleItemCard: View {
    let image: String
    let name: String
    let size: Int?
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
        
            
            Spacer().frame(height: 12)
                
            Group {
                Text(name)
                    // .lineSpacing(6) ?
                if let size = size {
                    Text("\(size)ml")
                    //    .lineSpacing(6) ?
                }
            }
            .font(.mainTextSemiBold14)
            
                
        } //: VSTACK
    }
}

#Preview {
    ZStack {
        Color.white01
        RectangleItemCard(image: "greenSirenDotMugSmall", name: "그린 사리엔 도트 머그", size: 237)
    }//: ZSTACK
}

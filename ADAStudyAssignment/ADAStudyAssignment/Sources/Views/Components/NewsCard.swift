//
//  NewsCard.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/5/25.
//

import SwiftUI

struct NewsCard: View {
    let image: String
    let title: String
    let detail: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(image)
            
            
            Text(title)
                .font(.mainTextSemiBold18)
                .foregroundStyle(Color.black02)
            
            
            Text(detail)
                .font(.mainTextRegular13)
                .foregroundStyle(Color.gray03)
            
        } //:VSTACK
        .frame(width: 240, height: 249)
    }
}

#Preview {
    NewsCard(
        image: "news1",
        title: "25년 3월 일회용컵 없는 날 캠페..",
        detail: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."
    )
}

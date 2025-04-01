//
//  HomeView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Tab("Home", image: "home") {
                EmptyView()
            }
            
            Tab("Pay", image: "pay") {
                EmptyView()
            }
            
            Tab("Order", image: "order") {
                EmptyView()
            }
            
            Tab("Shop", image: "shop") {
                EmptyView()
            }
            
            Tab("Other", image: "other") {
                OtherView()
            }
        }
        .tint(.green02) /// Assetes 이미지 오른쪽 Image Set에서 Render As를 Template Image로 변경해야함.
        
        
    }
}

#Preview {
    HomeView()
}

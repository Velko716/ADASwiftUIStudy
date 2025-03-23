//
//  SplashView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/21/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color(.green01).ignoresSafeArea()
            Image("starbucksLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 168, height: 168)
            
        }
        
        
        
    }
}

#Preview {
    SplashView()
}

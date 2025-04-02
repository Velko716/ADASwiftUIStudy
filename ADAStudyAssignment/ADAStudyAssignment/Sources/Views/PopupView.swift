//
//  PopupView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import SwiftUI

struct PopupView: View {
    @Environment(\.dismiss) private var dismiss ///
    
    var body: some View {
        
        VStack {
            Image("popupImage")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                
            
            Spacer()
            
            
            VStack(spacing: 19) {
                Button { print("자세히 보기") }
                label: {
                    Text("자세히보기")
                        .font(.makeMedium18)
                        .tint(.white)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 58)
                .background(Color.green01)
                .cornerRadius(20)
                
                Button { dismiss() }
                 label: {
                    Spacer()
                    
                    HStack(spacing: 0) {
                        Text("X 닫기")
                    } //:HSTACK
                    .font(.mainTextLight14)
                    .tint(.gray05)
                    .padding(.horizontal, 19)
                }
                
                
            } //:VSTACK
            .padding(.horizontal, 18)
            
            
            
            Spacer()
            
        } //: VSTACK
        
        
    }
}

#Preview {
    PopupView()
}

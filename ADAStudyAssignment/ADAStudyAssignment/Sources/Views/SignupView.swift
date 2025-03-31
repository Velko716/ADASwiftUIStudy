//
//  SignupView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import SwiftUI

struct SignupView: View {
    @Bindable var signupVM: SignupViewModel = .init()
    
    /// 초기화 때문에.
    @State private var nickname = ""
    @State private var email = ""
    @State private var pwd = ""
    
    
    var body: some View {
        VStack {
                
         
            top
            
            Spacer()
                
            bottom
            
            
            
        } //: VSTACK
        .padding(EdgeInsets(top: 210, leading: 19, bottom: 72, trailing: 19))
        
        
    }
    
    
    // MARK: - Top TEXT FIELD
    private var top: some View {
        VStack(spacing: 0) { // 0안하면 딱 붙지가 않음.
            TextField("닉네임", text: $nickname)
                .font(.mainTextRegular18)
                .tint(.gray02)
                .padding(.bottom, 9)
            Divider()
                .tint(.gray02)
                .padding(.bottom, 47)
            
            
            TextField("이메일", text: $email)
                .font(.mainTextRegular18)
                .tint(.gray02)
                .padding(.bottom, 9)
            Divider()
                .tint(.gray02)
                .padding(.bottom, 47)
            
            
            SecureField("비밀번호", text: $pwd)
                .font(.mainTextRegular18)
                .tint(.gray02)
                .padding(.bottom, 9)
            Divider()
                .tint(.gray02)
            
        }//: VSTACK
        .frame(width: 402, height: 188)
    }
    
    // MARK: - Bottom Button
    private var bottom: some View {
        Button {
            signupVM.signupUser.nickname = self.nickname
            signupVM.signupUser.email = self.email
            signupVM.signupUser.pwd = self.pwd
            
            signupVM.createUser()
            
        } label: {
            Text("생성하기")
                .font(.makeMedium18)
                .foregroundStyle(Color.white)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(Color.green)
        .cornerRadius(20)
    }

    
    
}

#Preview {
    SignupView()
}

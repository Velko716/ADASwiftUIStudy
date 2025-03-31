//
//  LoginView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/21/25.
//

import SwiftUI




struct LoginView: View {
    
    @State var loginVM: LoginViewModel = .init()
    
    var body: some View {
        VStack(alignment: .center) {
            
            topGroup
            Spacer()
            middleGroup
            Spacer()
            bottomGroup
            
        }//: VSTACK
      
        .safeAreaPadding(EdgeInsets.init(top: 104, leading: 19, bottom: 62.95, trailing: 19))
    }
    
    
    
    
    
    // MARK: - TOP
    private var topGroup: some View {
        VStack(alignment: .leading) {
            
            Image("starbucksLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 97, height: 95)
                .padding(.bottom, 28)
            
            
            Text("안녕하세요.\n스타벅스입니다.")
                .padding(.bottom, 19)
                .kerning(1.2)
                .font(.mainTextExtraBold24)
            
            
            Text("화원 서비스 이용을 위해 로그인 해주세요")
                .font(.mainTextMedium16)
                .foregroundStyle(Color.gray01)
            
        }//: VSTACK
        .frame(maxWidth : .infinity, alignment: .leading)
    }

    
    // MARK: - MIDDLE
    private var middleGroup: some View {
        
        VStack(spacing: 0) {
            
            Group {
                TextField("아이디" ,text: $loginVM.id)
                Divider()
                    /// 🤔 커서 움직일 때, 색상 변경하기
                    
                
                Spacer().frame(height: 47)
                
                
                SecureField("비밀번호", text: $loginVM.pwd)
                    
                Divider()
            }
            .padding(.bottom, 1.98)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.mainTextRegular13)
            .foregroundStyle(Color.black01)
            
            
            Spacer().frame(height: 47)
//            Group {
//                InputFieldLabel(label: "아이디")
//                InputFieldLabel(label: "비밀번호")
//            }
        
            Button(action: {
                
            }, label: {
                Text("로그인하기")
                    .padding()
                    .font(.mainTextMedium16)
                    .tint(.white)
            })
            .frame(height: 46)
            .frame(maxWidth: .infinity)
            .background(Color.green01)
            .cornerRadius(20)
            
        }//: VSTACK
        
        
        
    }
    
    
    // MARK: - BOTTOM
    private var bottomGroup: some View {
        VStack(spacing: 19) {
            Text("이메일로 회원가입하기")
                .font(.mainTextRegular12)
                .foregroundStyle(Color.gray04)
                .underline()
            
            Group {
                Image("kakaoLoginButtonImage")
                Image("appleLoginButtonImage")
            }
        }//: VSTACK
    }
    
    
    // MARK: - 텍스트만 다르고 중복되는 뷰
    struct InputFieldLabel: View {
        var label: String
        
        var body: some View {
            VStack(alignment: .leading, spacing: 0) {
                Text(label)
                    .font(.mainTextRegular13)
                    .foregroundStyle(Color.black01)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 1.98)
                
                Divider()
                    .padding(.bottom, 47)
            }
        }
    }
    
    
}


//#Preview {
//    LoginView()
//}

struct LoginView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro Max"]
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}

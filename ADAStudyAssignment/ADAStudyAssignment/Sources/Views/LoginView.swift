//
//  LoginView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/21/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Spacer().frame(height: 104)
            topGroup
            Spacer().frame(height: 104)
            middleGroup
            Spacer().frame(height: 104)
            bottomGroup
            Spacer().frame(height: 62.95).ignoresSafeArea()
        }//: VSTACK
        .padding(.horizontal, 19)
    }
    
    
    // MARK: - TOP
    private var topGroup: some View {
        HStack(spacing: 0) {
            Group {
                VStack(alignment: .leading, spacing: 0) {
                    
                    Image("starbucksLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 97, height: 95)
                        .padding(.bottom, 28)
                    
                    
                    Group {
                        Text("안녕하세요.")
                            .font(.mainTextExtraBold24)
                        
                        Text("스타벅스입니다.")
                            .font(.mainTextExtraBold24)
                            .padding(.bottom, 19)
                    }
                    
                    
                    Text("화원 서비스 이용을 위해 로그인 해주세요")
                        .font(.mainTextMedium16)
                        .foregroundStyle(Color.gray01)
                }
                Spacer()
            }
        }
    }
    
    
    // MARK: - MIDDLE
    private var middleGroup: some View {
    
        VStack(spacing: 0) {
            
            Group {
                InputFieldLabel(label: "아이디")
                InputFieldLabel(label: "비밀번호")
            }
            
            Button(action: {
                
            }, label: {
                VStack(spacing: 0) {
                    
                    Text("로그인하기")
                        .padding()
                        .font(.mainTextMedium16)
                        .tint(.white)
                        
                    
                } //: VSTACK
                   
            })
            .frame(maxWidth: .infinity, maxHeight: 46)
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


#Preview {
    LoginView()
}

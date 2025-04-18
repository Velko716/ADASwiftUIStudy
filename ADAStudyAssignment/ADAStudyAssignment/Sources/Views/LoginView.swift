//
//  LoginView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/21/25.
//

import SwiftUI





struct LoginView: View {
    
    @State var loginVM: LoginViewModel = .init()
    
    @FocusState private var focus: FocusType?
    
    @State private var isIDFocused : Bool = false
    @State private var isPwdFocused : Bool = false
    
    @State private var id: String = ""
    @State private var pwd: String = ""
    
    
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                
                topGroup
                Spacer()
                middleGroup
                Spacer()
                bottomGroup
                
            }//: VSTACK
            .safeAreaPadding(EdgeInsets.init(top: 104, leading: 19, bottom: 62.95, trailing: 19))
        }//: NAVIGATION
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
        NavigationStack {
            VStack(spacing: 0) {
                
                Group {
                    TextField("아이디" ,text: $id)
                        .focused($focus, equals: .idTextField)
                    
                    Rectangle()
                        .foregroundStyle(isIDFocused ? Color.green01 : Color.gray00)
                        .frame(height: 0.7)
                    
                    /// 🤔 Divider사용하면 background로 색을 변경해야하는데, 그러면 가로로 프레임이 넘쳐나는 문제
                    //Divider()
                    //                    .foregroundStyle(.blue)
                    //.background(isIDFocused ? Color.green01 : Color.gray00)
                    
                    
                    
                    Spacer().frame(height: 47)
                    
                    
                    SecureField("비밀번호", text: $pwd)
                        .focused($focus, equals: .pwdTextField)
                    
                    Rectangle()
                        .foregroundStyle(isPwdFocused ? Color.green01 : Color.gray00)
                        .frame(height: 0.7)
                    
                    
                    //                Divider()
                    //                    .background(isPwdFocused ? Color.green01 : Color.gray00)
                }
                .padding(.bottom, 1.98)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.mainTextRegular13)
                .foregroundStyle(Color.black01)
                .onChange(of: focus) { /// onChange는 많이 안 사용하는게 좋음.
                    guard let focus = focus else { return }
                    switch focus {
                    case .idTextField:
                        isIDFocused = true
                    case .pwdTextField:
                        isPwdFocused = true
                    case .nickNameTextField:
                        break
                    }
                }
                .onSubmit { // 입력 종료시
                    guard let focus = focus else { return }
                    switch focus {
                    case .idTextField:
                        isIDFocused = false
                    case .pwdTextField:
                        isPwdFocused = false
                    case .nickNameTextField:
                        break
                    }
                }
                
                
                
                
                Spacer().frame(height: 47)
                
                
                
                NavigationLink {
                    HomeView(shopVM: ShopViewModel(products: [])) // FIXME: - 고쳐야됨
                } label: {
                    Text("로그인하기")
                        .padding()
                        .font(.mainTextMedium16)
                        .tint(.white)
                }
                .frame(height: 46)
                .frame(maxWidth: .infinity)
                .background(Color.green01)
                .cornerRadius(20)
                
            }//: VSTACK
        }//: NAVIGATION
        
        
    }
    
    
    // MARK: - BOTTOM
    private var bottomGroup: some View {
        VStack(spacing: 19) {
            // FIXME: - 이렇게 해도 구현은 되지만, Route를 만들어보자!
            /// NavigationLink(destination: <#T##() -> View#>, label: <#T##() -> View#>)
            NavigationLink {
                SignupView()
            } label: {
                Text("이메일로 회원가입하기")
                    .font(.mainTextRegular12)
                    .foregroundStyle(Color.gray04)
                    .underline()
            }
            
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

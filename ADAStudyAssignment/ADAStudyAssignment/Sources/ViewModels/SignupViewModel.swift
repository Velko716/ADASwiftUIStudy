//
//  SignupViewModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import Foundation
import SwiftUI


/// @Observable 매크로를 사용하면, 이 클래스에 @AppStorage를 사용할 수 없음. 대신 ObservableObject를 사용하면 사용이 가능하다.
class SignupViewModel: ObservableObject {
    
    @Published var signupUser: SignupModel = .init(nickname: "", email: "", pwd: "")
    
    @AppStorage("signupUserNickname") var signupUserNickname: String = ""
    @AppStorage("signupUserEmail") var signupUserEmail = ""
    @AppStorage("signupUserPwd") var signupUserPwd: String = ""
    
    func createUser() {
        // @AppStorage 기본 타입만 지정가능
        self.signupUserNickname = self.signupUser.nickname
        self.signupUserEmail = self.signupUser.email
        self.signupUserPwd = self.signupUser.pwd
        self.signupUser = .init(nickname: "", email: "", pwd: "")
        
    }
    
}

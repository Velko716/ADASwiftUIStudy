//
//  SignupViewModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import Foundation
import SwiftUI


@Observable
class SignupViewModel {
    
    var signupUser: SignupModel = .init(nickname: "", email: "", pwd: "")

    
    func createUser() {
        // @AppStorage 기본 타입만 지정가능
        @AppStorage("signupUserNickname") var signupUserNickname: String = self.signupUser.nickname
        @AppStorage("signupUserEmail") var signupUserEmail = self.signupUser.email
        @AppStorage("signupUserPwd") var signupUserPwd: String = self.signupUser.pwd
        self.signupUser = .init(nickname: "", email: "", pwd: "")
        
    }
    
}

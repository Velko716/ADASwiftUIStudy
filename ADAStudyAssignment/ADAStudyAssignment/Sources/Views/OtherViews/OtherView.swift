//
//  OtherView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import SwiftUI


/// 🙂 전체 높이 인피니티 => 탑 중간 바텀 마다 Spacer로 조정

struct OtherView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        // ?
        NavigationStack { // FIXME: - 이렇게 구현하면 안됨. 임시!
            VStack {
                LabeledContent {
                    Button {
                        dismiss()
                    } label: {
                        Image("logout")
                            .frame(width: 35, height: 35)
                    }
                } label: {
                    Text("Other")
                        .font(.mainTextBold24)
                }
                .frame(maxWidth: .infinity)
                //.padding(EdgeInsets(top: 28, leading: 23.5, bottom: 16, trailing: 23.5))
                .frame(height: 36)
                .padding(.horizontal, 23.5)
                .padding(.top, 28)
                .padding(.bottom, 16)
            } //: VSTACK
       
        ZStack {
            Color.gray07
            
                
                
                
            VStack {
                    Top()
                    Spacer()
                    
                    Middle()
                    Spacer()
                    
                    Bottom()
                }//: VSTACK
//                    .frame(maxWidth: .infinity)
//                    .frame(height: 683)
                    .padding(.vertical, 41)
    //                .navigationTitle("Other")
    //                .toolbar {
    //                    ToolbarItem(placement: .navigationBarTrailing) {
    //                        Button {
    //                            print("로그아웃")
    //                        } label: {
    //                            Image("logout")
    //                                .frame(width: 35, height: 35)
    //                        }
    //                    }
    //                }
              
            
        }
        .frame(maxHeight: .infinity) /// ⭐️ 고정프레임보다는?
        
        }//: NAVIGATION
    }
}



// MARK: - Top
struct Top: View {
    @AppStorage("signupUserNickname") var signupUserNickname: String = "(작성한 닉네임)"
    
    var body: some View {
        VStack(spacing: 24) {
            
            VStack(alignment: .center, spacing: 5) {
                
                
                Group {
                    Text("\(signupUserNickname)")
                        .foregroundStyle(Color.green01)
                    
                    +
                    
                    Text(" 님\n 환영합니다! \(Image("hand"))")
                        
                }
                .multilineTextAlignment(.center)
                .font(.mainTextSemiBold24)
                
            } //:VSTACK
           
            
            HStack(spacing: 10.5) {
                
                Group {
                    Button { print("별 히스토리") }
                     label: { TopButton(image: "starHistory", label: "별 히스토리")  }

                   
                    // 전자 영수증
                    NavigationLink {
                        ElectronicReceipt()
                            //.navigationTitle("전자영수증")
                            //.navigationBarTitleDisplayMode(.inline)
                            .navigationBarBackButtonHidden()
                    } label: {
                        TopButton(image: "receipt", label: "전자영수증")
                    }

                    
                    
                    Button { print("나만의 메뉴") }
                     label: { TopButton(image: "my", label: "나만의 메뉴")  }
                }
                .frame(width: 102, height: 108)
                .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
            } //:HSTACK
            .frame(width: 375, height: 108)
            .padding(.horizontal, 24)
            
        } //: VSTACK
        .frame(maxWidth: .infinity)
       
    }
}



// MARK: - Middle Pay
struct Middle: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            
            Text("Pay")
                .font(.mainTextSemiBold18)
                .frame(maxWidth: 420, alignment: .leading)
                .padding(.horizontal, 10)
            
            
            Spacer().frame(height: 8)
            
           
                
            HStack {
                Button {
                    print("스타벅스 카드 등록")
                } label: {
                    BottomButton(image: "pay", label: "스타벅스 카드 등록")
                }
                
                Spacer()
                
                Button {
                    print("카드 교환권 등록")
                } label: {
                    BottomButton(image: "cardChange", label: "카드 교환권 등록")
                }
            } //: HSTACK
            .padding(.horizontal, 11)
            .padding(.vertical, 16)
            
            
            HStack {
                
                Button {
                    print("쿠폰 등록")
                } label: {
                    BottomButton(image: "coupon", label: "쿠폰 등록")
                }
                
                Spacer()
                
                Button {
                    print("쿠폰 히스토리")
                } label: {
                    BottomButton(image: "conponHistory", label: "쿠폰 히스토리")
                }
                
                
            } //: HSTACK
            .padding(.horizontal, 11)
            .padding(.vertical, 16)
           
            
            
            Divider()
        } //: VSTACK
        .padding(.horizontal, 11) //
        .frame(maxWidth: .infinity)
        
       
        
        
       
        
        
        
        
        
    }
}


// MARK: - Bottom 고객지원
struct Bottom: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("고객지원")
                .font(.mainTextSemiBold18)
                .padding(.horizontal, 10)
            Spacer().frame(height: 8)
            
            
            HStack {
                Button {
                    print("스토어 케어")
                } label: {
                    BottomButton(image: "storeCare", label: "스토어 케어")
                }
                
                Spacer()
                
                Button {
                    print("고객의 소리")
                } label: {
                    BottomButton(image: "customer", label: "고객의 소리")
                }
                
                
            } //: HSTACK
            .padding(.vertical, 16)
            .padding(.horizontal, 11)
                        
            HStack {
                
                Button {
                    print("매장 정보")
                } label: {
                    BottomButton(image: "storeInfo", label: "매장 정보")
                }
                
                Spacer()
                
                Button {
                    print("반납기 정보")
                } label: {
                    BottomButton(image: "returnInfo", label: "반납기 정보")
                }
                
            } //: HSTACK
            .padding(.vertical, 16)
            .padding(.horizontal, 11)
            
            
            HStack {
                Button {
                    print("마이 스타벅스 리뷰")
                } label: {
                    BottomButton(image: "myReview", label: "마이 스타벅스 리뷰")
                }
                
                
            } //: HSTACK
            .padding(.vertical, 16)
            .padding(.horizontal, 11)
            
            
        } //: VSTACK
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 10)
        
    }
}







// MARK: - 재사용 가능한 별 히스토리, 전자 영수증, 나만의 메뉴 버튼 만들기
struct TopButton: View {
    let image: String
    let label: String
    
    
    var body: some View {
        
        
        
        VStack(spacing: 4) {
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .overlay {
                    Image(image)
                        .frame(width: 48, height: 48)
                        .padding(.top, 17)
                        .padding(.bottom, 43)
                    
                    Text(label)
                        .frame(maxWidth: .infinity)
                        .font(.mainTextSemiBold16)
                        .tint(.black03)
                        .padding(.top, 69)
                        .padding(.bottom, 17)
                }
                
                
            
        }//: VSTACK
        
    }
}


// MARK: - 그 외 나머지 재사용 가능한 버튼 만들기
struct BottomButton: View {
    let image: String
    let label: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(image)
                .frame(width: 24, height: 16)
            Text(label)
                .font(.mainTextSemiBold16)
                .tint(.black02)
        } //:HSTACK
        .frame(width: 157, alignment: .leading)
    }
    
}


#Preview {
    OtherView()
}

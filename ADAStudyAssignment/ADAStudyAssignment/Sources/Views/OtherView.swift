//
//  OtherView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import SwiftUI

struct OtherView: View {
    
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Other")
                    .font(.mainTextBold24)
                Spacer()
                Button {
                    print("logout")
                } label: {
                    Image("logout")
                        .frame(width: 35, height: 35)
                }

                
               
                    
            } //:HSTACK
            .padding(EdgeInsets(top: 28, leading: 23.5, bottom: 16, trailing: 23.5))
            
            
            
            ZStack {
                Color.gray07
                
                VStack {
                    Top()
                    Spacer()
                    
                    Middle()
                    Spacer()
                    
                    Bottom()
                }//: VSTACK
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
            }//: ZSTACK
        } //: VSTACK
            
           
           
            
        
        
        
        
        
        
      
        
        
    }
}



// MARK: - Top
struct Top: View {
    @AppStorage("signupUserNickname") var signupUserNickname: String = "(작성한 닉네임)"
    
    var body: some View {
        VStack(spacing: 24) {
            
            VStack(spacing: 5) {
                Group {
                    Text("\(signupUserNickname)")
                        .foregroundStyle(Color.green01)
                    +
                    Text(" 님\n 환영합니다!\(Image("hand"))")
                }
                .font(.mainTextSemiBold24)
                .multilineTextAlignment(.center)
                
            } //:VSTACK
            
           
            
            HStack(spacing: 10.5) {
                
                Group {
                    Button { print("별 히스토리") }
                     label: { TopButton(image: "starHistory", label: "별 히스토리")  }

                    Button { print("전자영수증") }
                     label: { TopButton(image: "receipt", label: "전자영수증")  }
                    
                    Button { print("나만의 메뉴") }
                     label: { TopButton(image: "my", label: "나만의 메뉴")  }
                    
                }
                .frame(width: 102, height: 108)
                
            } //:HSTACK
        } //: VSTACK
    }
}



// MARK: - Middle Pay
struct Middle: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Pay")
                .font(.mainTextSemiBold18)
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
            Divider()
            .padding(.vertical, 16)
            
            
            
            
        } //: VSTACK
        .padding(.horizontal, 10)
        
        
    }
}


// MARK: - Bottom 고객지원
struct Bottom: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("고객지원")
                .font(.mainTextSemiBold18)
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
            
            
            HStack {
                Button {
                    print("마이 스타벅스 리뷰")
                } label: {
                    BottomButton(image: "myReview", label: "마이 스타벅스 리뷰")
                }
                
                
            } //: HSTACK
            .padding(.vertical, 16)
            
            
        } //: VSTACK
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
        HStack(spacing: 4) {
            Image(image)
                .frame(width: 32, height: 32)
            Text(label)
                .font(.mainTextSemiBold16)
                .tint(.black02)
        } //:HSTACK
        .frame(width: 157, height: 32, alignment: .leading)
       
        //.frame(alignment: .leading)
    }
}


#Preview {
    OtherView()
}

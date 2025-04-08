//
//  HomeView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/31/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 4
    
    var body: some View {
        NavigationStack { /// NavigationLink 이용하기 위해
            TabView {
                Tab("Home", image: "home") {
                    HomeDetailView()
                        .ignoresSafeArea(edges: .top) //top만 줘야함.
                }
                
                
                Tab("Pay", image: "pay") {
                    EmptyView()
                }
                
                Tab("Order", image: "order") {
                    EmptyView()
                }
                
                Tab("Shop", image: "shop") {
                    EmptyView()
                }
                
                Tab("Other", image: "other") {
                    OtherView()
                }
            }
            
            .navigationBarBackButtonHidden()
            .tint(.green02) /// Assetes 이미지 오른쪽 Image Set에서 Render As를 Template Image로 변경해야함.
        }//: NAVIGATION
        
    }
}



// MARK: - HomeDetailView
struct HomeDetailView: View {
    var homeVM: HomeViewModel = .init()
    
    var body: some View {
        ScrollView {
            HomeBannerView()
            
            
            LazyVStack(spacing: 20) {
            
            // HomeBottomBanner
            Image("bearBanner")
                
                
            RecommendedMenu()
                
                
            Image("eventBanner")
            Image("serviceSuscibe")
                
           
            
            
            NewsView()
                
            } //: VSTACK
            
            /// 중간 배너
            LazyVStack(spacing: 14) {
                Image("mugcupBanner")
                Image("onlineStoreBanner")
                Image("deliveryBanner")
        
            } //: VSTACK
            
            DessertView()
            
            LazyVStack(spacing: 20) {
                Image("coldBrewBanner")
                Image("signatureDrinkBanner")
                Image("makeBanner")
                
            } //: VSTACK
            
            
            
        }
        
    }
}

// MARK: - HomeTopView
struct HomeBannerView: View {
    var body: some View {
        HomeTopBannerView()
        
       
        
        
    }
}

// MARK: - TopBannerView
struct HomeTopBannerView: View {
    var body: some View {
        ZStack {
            
            Image("rabitBackground")
                .resizable()
            
            
            VStack(alignment: .leading ,spacing: 29) {
                Group {
                    Text("골든 미모사 그린 티와 함께\n")
                    +
                    Text("행복한 새해의 축배를 들어요!")
                }
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
                //.padding(EdgeInsets(top: 80, leading: 28.16, bottom: 0, trailing: 0))
                
                
                HStack {
                    /// Gauge
                    Gauge(value: 0.4) {
                        HStack {
                            currentValueLabel: do {
                                Text("11★ until next Reward")
                                    .font(.mainTextSemiBold16)
                                    .foregroundStyle(Color.brown)
                            }
                            Spacer()
                        } //: HSTACK
                    }
                    .gaugeStyle(.linearCapacity)
                    .tint(Color.brown)
                    .frame(maxWidth: .infinity)
                    //.frame(width: 255.79, alignment: .leading)

                    //Spacer()
                    
                    VStack(alignment: .trailing, spacing: 0) {
                        Button {
                            print("내용 보기")
                        } label: {
                            Text("내용 보기")
                                .font(.mainTextRegular13)
                                .foregroundStyle(Color.gray06)
                            
                            Image("goLine")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                            
                        }
                        
                        HStack {
                            Text("1")
                                .font(.mainTextSemiBold38)
                                .foregroundStyle(Color.black03)
                            
                            Text("/")
                                .foregroundStyle(.gray)
                            
                            Text("12★")
                                .foregroundStyle(Color.brown)
                        } //:HSTACK
                        .padding(.trailing, 30.15)
                        //.padding()
                    } //: VSTACK
                    
                   
                    
                    
                    
                }//: HSTACK
                .padding(.trailing, 11.02) // 16으로만 지정.
                
            } //:VSTACK
            .padding(.top, 80)
            .padding(.leading, 28.16)
            
        } //: ZSTACK
    }
}





// MARK: - RecommendedMenuView 추천 메뉴
struct RecommendedMenu: View {
    
    var homeVM: HomeViewModel = .init()
    @AppStorage("signupUserNickname") var signupUserNickname: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text(signupUserNickname ?? "(설정 닉네임)")
                    .foregroundStyle(Color.brown)
                +
                Text("님을 위한 추천 메뉴")
            }
            .font(.mainTextBold24)
            .padding(.horizontal, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) { /// ⭐️ 데이터가 많을수록 LazyHStack이 더 효율적임 Grid로 안한이유
                    ForEach(homeVM.userRecommendedMenu) { card in
                        
                        NavigationLink {
                                CoffeeDetailView(coffee: card)
                            } label: {
                                VStack(spacing: 10) {
                                    CircleImageCard(
                                        image: card.image,
                                        title: card.title
                                    )
                                }//: VSTACK
                            }
                        
                    } //:LOOP
                }//: LAZYHSTACK
            }//: SCROLL
            .padding(.horizontal, 10)
        } //: VSTACK
        .padding(.horizontal, 10)
    }
}


// MARK: - News 뷰
struct NewsView: View {
    var homeVM: HomeViewModel = .init()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("Wtaht's New")
                .font(.mainTextBold24)
                .padding(.horizontal, 10)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) { /// ⭐️ 데이터가 많을수록 LazyHStack이 더 효율적임 Grid로 안한이유
                    ForEach(homeVM.news) { card in
                        
                        VStack(spacing: 10) {
                            NewsCard(
                                image: card.image,
                                title: card.title,
                                detail: card.detail ?? ""
                            )
                        } //: VSTACK
                    } //:LOOP
                }//: LAZYHSTACK
            }//: SCROLL
            .padding(.horizontal, 10)
        } //: VSTACK
        .padding(.horizontal, 10)
    }
}


// MARK: - Dessert 디저트 뷰
struct DessertView: View {
    var homeVM: HomeViewModel = .init()
    
    var body: some View {
        /// 하루가 달콤해지는 디저트
        VStack(alignment: .leading, spacing: 16) {
            Text("하루가 달콤해지는 디저트")
                .font(.mainTextSemiBold24)
                .foregroundStyle(Color.black03)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) { /// ⭐️ 데이터가 많을수록 LazyHStack이 더 효율적임 Grid로 안한이유
                    ForEach(homeVM.dessert) { card in
                        
                        VStack(spacing: 10) {
                            CircleImageCard(
                                image: card.image,
                                title: card.title
                            )
                        } //: VSTACK
                    } //:LOOP
                }//: LAZYHSTACK
            }//: SCROLL
        } //: VSTACK
        .padding(.horizontal, 10)
        
    }
}


#Preview {
    HomeView()
}

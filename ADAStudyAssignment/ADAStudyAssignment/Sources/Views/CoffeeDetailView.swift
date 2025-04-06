//
//  CoffeeDetailView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/6/25.
//

import SwiftUI

struct CoffeeDetailView: View {
    //@State private var selected = "HOT"
    //let options = ["HOT", "ICED"]

    let coffee: CoffeeModel
    
    
    
    var body: some View {
        //VStack {
        
        ImageTopView(coffee: coffee)
        
        
        
        VStack(alignment: .leading) { /// 이미지가 VStack에 포함되어 있으면 VStack 패딩이 안먹힘 ==> 이미 이미지의 크기가 고정이 돼서 패딩이 잘 작동되지 않음.
            
            TitleView(coffee: coffee)
            
            Spacer()
            
            DetailPriceView(coffee: coffee)
            
            Spacer()
            
            OrderButtonView()

            
        } //:VSTACK
        .padding(.horizontal, 10)
        
     
        
        .navigationBarBackButtonHidden()
    }
}

// MARK: - TopView
struct ImageTopView: View {
    let coffee: CoffeeModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Image("detail" + coffee.image)
            .ignoresSafeArea(edges: .top)
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .overlay(alignment: .top) {
                LabeledContent {
                    Button {
                        print("share")
                    } label: {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black)
                            .opacity(0.4)
                            .overlay {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundStyle(Color.gray00)
                            }
                    }
                } label: {
                    Button {
                        dismiss()
                    } label: {
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black)
                            .opacity(0.4)
                            .overlay {
                                Image(systemName: "lessthan")
                                    .foregroundStyle(Color.gray00)
                            }
                    }
                }
                .padding(.horizontal, 16)
            }
    }
}

// MARK: - MiddleView
struct TitleView: View {
    let coffee: CoffeeModel
    
    var body: some View {
        HStack(spacing: 4) {
            Text(coffee.title)
                .font(.mainTextSemiBold24)
                .foregroundStyle(Color.black03)
            
            
            
            Image(coffee.isNew ? "new" : "")
            
            Spacer()
        } //:HSTACK
        
        
        Text(coffee.englishTitle)
            .font(.mainTextSemiBold14)
            .foregroundStyle(Color.gray01)
    }
}

// MARK: - BottomView
struct DetailPriceView: View {
    let coffee: CoffeeModel
    @State private var selected: CoffeeModel.DrinkTemperature = .iced
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(coffee.detail)
                .font(.mainTextSemiBold14)
                .foregroundStyle(Color.gray06)
            
            Text("\(coffee.price)원")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
        } //: VSTACK
        
        HStack(spacing: 0) {
            ForEach(CoffeeModel.DrinkTemperature.allCases, id: \.self) { temp in
                let isSelected = selected == temp
                let textColor: Color = isSelected ? .blue : .gray

                Text(temp.rawValue)
                    .font(.mainTextSemiBold18)
                    .foregroundColor(textColor)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(
                        isSelected
                        ? AnyView(
                            Color.white
                                .clipShape(Capsule())
                                .shadow(color: .gray.opacity(0.3), radius: 4, x: 0, y: 2)
                        )
                        : AnyView(Color.clear)
                    )
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation {
                            selected = temp
                        }
                    }
            }
        }
        .padding(4)
        .background(Color.gray.opacity(0.2))
        .clipShape(Capsule())
        .padding(.horizontal)
        
        
        
        // MARK: - Picker 커스텀이 안됨
//            Picker("ChoiceHotIce", selection: $selected) {
//                ForEach(options, id: \.self) { option in
//                    Text(option)
//                        .font(.mainTextSemiBold18)
//                        .foregroundStyle(Color.red01)
//                } //:LOOP
//            }
//            .pickerStyle(.segmented)
        
    }
}

// MARK: - TailView
struct OrderButtonView: View {
    var body: some View {
        Button {
           print("주문하기")
        } label: {
            Rectangle()
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.04), radius: 3.5, x: 0, y: -3)
                .blur(radius: 7)
                .overlay {
                    Button {
                        // 실제 주문 액션
                    } label: {
                        Text("주문하기")
                            .font(.mainTextMedium16)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 15)
                            .background(Color.green00)
                            .cornerRadius(24)
                            .padding(.horizontal, 28)
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 73)
        }
    }
}


#Preview {
    CoffeeDetailView(
        coffee: CoffeeModel.init(
            image: "espressoConPanna",
            title: "에스프레소 콘 파나",
            englishTitle: "Espresso Con Panna",
            detail: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
            price: 4100,
            isNew: true,
            temperatureOption: .hot
        )
    )
}


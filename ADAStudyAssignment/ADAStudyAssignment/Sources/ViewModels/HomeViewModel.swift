//
//  HomeViewModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/5/25.
//

import Foundation


/*
 .init(image: "espressoConPanna", title: "에스프레소 콘파나", detail: nil),
 .init(image: "espressoMacchiato", title: "에스프레소 마키아또", detail: nil),
 .init(image: "icedCafeAmericano", title: "아이스 카페 아메리카노", detail: nil),
 .init(image: "cafeAmericano", title: "카페 아메리카노", detail: nil),
 .init(image: "icedCaramelMacchiato", title: "아이스 카라멜 마키아또", detail: nil),
 .init(image: "caramelMacchiato", title: "카라멜 마키아또", detail: nil),
 
 */
@Observable
class HomeViewModel {
    var userRecommendedMenu: [CoffeeModel] = [
        .init(
            image: "espressoConPanna",
            title: "에스프레소 콘파나",
            englishTitle: "Espresso Con Panna",
            detail: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
            price: 4100,
            isNew: true,
            temperatureOption: .hot
        ),
        .init(
            image: "espressoMacchiato",
            title: "에스프레소 마키아또",
            englishTitle: "Espresso Macchiato",
            detail: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로서, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
            price: 3900,
            isNew: true,
            temperatureOption: .hot
        ),
        .init(
            image: "icedCafeAmericano",
            title: "아이스 카페 아메리카노",
            englishTitle: "Iced Caffe Americano",
            detail: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로서, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
            price: 4700,
            isNew: true,
            temperatureOption: .iced
        ),
        .init(
            image: "cafeAmericano",
            title: "카페 아메리카노",
            englishTitle: "Caffe Americano",
            detail: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
            price: 4700,
            isNew: true,
            temperatureOption: .hot
        ),
        .init(
            image: "icedCaramelMacchiato",
            title: "아이스 카라멜 마키아또",
            englishTitle: "Iced Caramel Macchiato",
            detail: "향긋한 바닐라 시럽과 시원한 우유에 어름을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: 6100,
            isNew: true,
            temperatureOption: .iced
        ),
        .init(
            image: "caramelMacchiato",
            title: "카라멜 마키아또",
            englishTitle: "Caffe Americano",
            detail: "향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: 4700,
            isNew: true,
            temperatureOption: .hot
        )
        
    ]
    
    var news: [CardModel] = [
        .init(image: "news1", title: "25년 3월 일회용컵 없는 날 캠페..", detail: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."),
        .init(image: "news2", title: "스타벅스 ooo점을 찾습니다", detail: "스타벅스 커뮤니티 스토어 파트너를 웅영할 기관을 공모합니다."),
        .init(image: "news3", title: "2월 8일, 리저브 스프링 신규 커...", detail: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.")
    ]
    
 
    var dessert: [CardModel] = [
        .init(image: "nuttyCroissant", title: "너티 크루아상", detail: nil),
        .init(image: "spicySausageBulgogi", title: "매콤 소시지 불고기", detail: nil),
        .init(image: "miniLeafPie", title: "미니 리프 파이", detail: nil),
        .init(image: "painAuChocolat", title: "뺑 오 쇼콜라", detail: nil),
        .init(image: "sausageOlivePie", title: "소시지&올리브 파이", detail: nil)
    ]

    
    
    
}


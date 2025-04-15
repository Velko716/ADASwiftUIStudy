//
//  ShopViewModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/14/25.
//

import Foundation

@Observable
class ShopViewModel: ObservableObject {
    let products: [ShopModel]
    
    let bestImems: [ShopModel] = [
        .init(image: "greenSirenSleeveMug", name: "그린 사이렌 슬리브 머그", size: 355),
        .init(image: "greenSirenClassicMug", name: "그린 사이렌 클래식 머그", size: 355),
        .init(image: "sirenMugWoodSaucer", name: "사이렌 머그 앤 우드 소서", size: nil),
        .init(image: "reserveGoldTailMug", name: "리저브 골드 테일 머그", size: 355),
        .init(image: "blackGoldMug", name: "블랙 앤 골드 머그", size: 473),
        .init(image: "blackRingMug", name: "블랙 링 머그", size: 355),
        .init(image: "bukcheongLionDanceDemiMug", name: "북청사자놀음 데미머그", size: 89),
        .init(image: "seoulJejuDemiMugSet", name: "서울 제주 데미머그 세트", size: nil),
    ]
    
    let rectangleItems: [ShopModel] = [
        .init(image: "greenSirenDotMugSmall", name: "그린 사이렌 도트 머그", size: 237),
        .init(image: "greenSirenDotMugLarge", name: "그린 사이렌 도트 머그", size: 355),
        .init(image: "homeCafeMiniMugSet", name: "홈 카페 미니 머그 세트", size: nil),
        .init(image: "homeCafeGlassSet", name: "홈 카페 글라스 세트", size: nil),
    ]
    
    
    
    init(products: [ShopModel]) {
        self.products = [
            .init(image: "tumbler", name: "텀블러", size: nil),
            .init(image: "coffeeSupplies", name: "커피 용품", size: nil),
            .init(image: "giftSet", name: "선물세트", size: nil),
            .init(image: "thermos", name: "보온병", size: nil),
            .init(image: "mugCup", name: "머그/컵", size: nil),
            .init(image: "lifestyle", name: "라이프스타일", size: nil),
        ]
        
      
    }
    
}

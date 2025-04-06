//
//  HomeViewModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/5/25.
//

import Foundation


//// MARK: - 추천 커피 메뉴 모델
//struct RecommendedMenuModel: Identifiable {
//    let id: String = UUID().uuidString
//    let image: String
//    let title: String
//}
//
//
//// MARK: - 뉴스 카드 모델
//struct NewsModel: Identifiable {
//    let id: String = UUID().uuidString
//    let image: String
//    let title: String
//    let detail: String
//}


// MARK: - Card 모델
struct CardModel: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    let title: String
    let detail: String?
}


// MARK: - Coffee 모델
struct CoffeeModel: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    let title: String
    let englishTitle: String
    let detail: String
    let price: Int
    let isNew: Bool ///
    let availableTemperatures: Set<DrinkTemperature>
    
    
    enum DrinkTemperature: String, CaseIterable {
        case hot = "HOT"
        case iced = "ICED"
    }
    
    
    
}

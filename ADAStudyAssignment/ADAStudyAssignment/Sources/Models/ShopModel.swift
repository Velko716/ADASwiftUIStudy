//
//  ShopModel.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/14/25.
//

import Foundation

// FIXME: - 외부서버 사용 시 Identifiable을 사용하여 UUID를 만드는것이 아닌, 직접적으로 아이디를 따로 구현해줘야함.
struct ShopModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String
    let size: Int?
}

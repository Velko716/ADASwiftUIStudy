//
//  Font.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 3/21/25.
//

import Foundation
import SwiftUI

/// ⭐️ swift 파일은 Sources로 ㅋㅋ;;;

extension Font {
    
    // Bold
    static let mainTextBold20 = ADAStudyAssignmentFontFamily.Pretendard.bold.swiftUIFont(size: 20)
    static let mainTextBold24 = ADAStudyAssignmentFontFamily.Pretendard.bold.swiftUIFont(size: 24)
    
    // SemiBold
    static let mainTextSemiBold13 = ADAStudyAssignmentFontFamily.Pretendard.semiBold.swiftUIFont(size: 13)
    static let mainTextSemiBold14 = ADAStudyAssignmentFontFamily.Pretendard.semiBold.swiftUIFont(size: 14)
    static let mainTextSemiBold16 = ADAStudyAssignmentFontFamily.Pretendard.semiBold.swiftUIFont(size: 16)
    static let mainTextSemiBold18 = ADAStudyAssignmentFontFamily.Pretendard.semiBold.swiftUIFont(size: 18)
    static let mainTextSemiBold24 = ADAStudyAssignmentFontFamily.Pretendard.semiBold.swiftUIFont(size: 24)
    static let mainTextSemiBold38 = ADAStudyAssignmentFontFamily.Pretendard.semiBold.swiftUIFont(size: 38)
    
    // Medium
    static let mainTextMedium16 = ADAStudyAssignmentFontFamily.Pretendard.medium.swiftUIFont(size: 16)
    static let makeMedium18 = ADAStudyAssignmentFontFamily.Pretendard.medium.swiftUIFont(size: 18)
    
    // Regular
    static let mainTextRegular09 = ADAStudyAssignmentFontFamily.Pretendard.regular.swiftUIFont(size: 9)
    static let mainTextRegular12 = ADAStudyAssignmentFontFamily.Pretendard.regular.swiftUIFont(size: 12)
    static let mainTextRegular13 = ADAStudyAssignmentFontFamily.Pretendard.regular.swiftUIFont(size: 13)
    static let mainTextRegular18 = ADAStudyAssignmentFontFamily.Pretendard.regular.swiftUIFont(size: 18)
    
    // Light
    static let mainTextLight14 = ADAStudyAssignmentFontFamily.Pretendard.light.swiftUIFont(size: 14)
    
    // ExtraBold
    static let mainTextExtraBold24 = ADAStudyAssignmentFontFamily.Pretendard.extraBold.swiftUIFont(size: 24)
}




//extension Font {
//    enum Pretend {
//        case extraBold
//        case bold
//        case semibold
//        case medium
//        case regular
//        case light
//        
//        var fontName: String {
//            switch self {
//            case .extraBold:
//                return ADAStudyAssignmentFontFamily.Pretendard.extraBold.name
//            case .bold:
//                return "Pretendard-Bold"
//            case .semibold:
//                return ADAStudyAssignmentFontFamily.Pretendard.semiBold.name
//            case .medium:
//                return ADAStudyAssignmentFontFamily.Pretendard.medium.name
//            case .regular:
//                return ADAStudyAssignmentFontFamily.Pretendard.regular.name
//            case .light:
//                return ADAStudyAssignmentFontFamily.Pretendard.light.name
//            }
//        }
//        
//        static func pretend(type: Pretend, size: CGFloat) -> Font {
//            return .custom(type.fontName, size: size)
//        }
//        
//        static var mainTextBold20: Font {
//            return .pretend(type: .bold, size: 20)
//        }
//        
//        static var mainTextSemibold13: Font {
//            return .pretend(type: .semibold, size: 13)
//        }
//        
//    }
//}









//extension Font {
//    
//    enum Pretend {
//        case extraBold
//        case bold
//        case semibold
//        case medium
//        case regular
//        case light
//        
//        var value: String {
//            switch self {
//            case .extraBold:
//                return "Pretendard-ExtraBold"
//            case .bold:
//                return "Pretendard-Bold"
//            case .semibold:
//                return "Pretendard-SemiBold"
//            case .medium:
//                return "Pretendard-Medium"
//            case .regular:
//                return "Pretendard-Regular"
//            case .light:
//                return "Pretendard-Light"
//            }
//        }
//    }
//    
//    static func pretend(type: Pretend, size: CGFloat) -> Font {
//        return .custom(type.value, size: size) 
//    }
//    
//    static var mainTextBold20: Font {
//        return .pretend(type: .bold, size: 20)
//    }
//    
//    static var mainTextBold24: Font {
//        return .pretend(type: .bold, size: 24)
//    }
//    
//    static var mainTextSemibold13: Font {
//        return .pretend(type: .semibold, size: 13)
//    }
//    
//    static var mainTextSemibold14: Font {
//        return .pretend(type: .semibold, size: 14)
//    }
//    
//    static var mainTextSemibold16: Font {
//        return .pretend(type: .semibold, size: 16)
//    }
//    
//    static var mainTextSemibold18: Font {
//        return .pretend(type: .semibold, size: 18)
//    }
//    
//    static var mainTextSemibold24: Font {
//        return .pretend(type: .semibold, size: 24)
//    }
//    
//    static var mainTextSemibold38: Font {
//        return .pretend(type: .semibold, size: 38)
//    }
//    
//    static var mainTextMedium16: Font {
//        return .pretend(type: .medium, size: 16)
//    }
//    
//    static var mainTextRegular09: Font {
//        return .pretend(type: .regular, size: 9)
//    }
//    
//    static var mainTextRegular12: Font {
//        return .pretend(type: .regular, size: 12)
//    }
//    
//    static var mainTextRegular13: Font {
//        return .pretend(type: .regular, size: 13)
//    }
//    
//    static var mainTextRegular18: Font {
//        return .pretend(type: .regular, size: 18)
//    }
//    
//    static var mainTextLight14: Font {
//        return .pretend(type: .light, size: 14)
//    }
//    
//    static var mainTextExtraBold24: Font {
//        return .pretend(type: .extraBold, size: 24)
//    }
//    
//    
//}




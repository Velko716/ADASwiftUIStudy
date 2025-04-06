import SwiftUI

@main
struct ADAStudyAssignmentApp: App {
    init() {
        ADAStudyAssignmentFontFamily.registerAllCustomFonts()
    }
    var body: some Scene {
        
        
        
        WindowGroup {
            HomeView()
        }
    } 
}

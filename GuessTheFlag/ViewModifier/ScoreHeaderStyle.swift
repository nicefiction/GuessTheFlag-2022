/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/views-and-modifiers-wrap-up

import SwiftUI



struct ScoreHeaderStyle: ViewModifier {
    
    // MARK: - PROPERTIES
    
    let color: Color
    
    
    // MARK: - METHODS
    
    func body(content: Content)
    -> some View {
        
        content
            .font(.largeTitle)
            .foregroundColor(color)
    }
}



extension View {
    
    func applyScoreHeaderStyle(using color: Color)
    -> some View {
        
        return modifier(ScoreHeaderStyle(color: color))
    }
}



// MARK: - PREVIEWS

//struct SubheaderStyle_Previews: PreviewProvider {
//
//    static var previews: some View {
//
//        SubheaderStyle(text: "Hello world.")
//    }
//}

/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/views-and-modifiers-wrap-up

import SwiftUI


struct FlagImage: View {
    
    // MARK: - PROPERTIES
    
    let flags: Array<String>
    let indexNumber: Int
    let color: Color
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        Image(flags[indexNumber])
        /// The`renderingMode(.original)` modifier
        /// tells SwiftUI to render the original image pixels
        /// rather than trying to recolor them as a button:
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(color: color,
                    radius: 3)
    }
}




// MARK: - PREVIEWS

struct FlagImage_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FlagImage(flags: ["France"],
                  indexNumber: 0,
                  color: .blue)
    }
}

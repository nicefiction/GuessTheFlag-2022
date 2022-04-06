/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/colors-and-frames

import SwiftUI



struct ColorsAndFrames: View {
    
    // MARK: - Computed properties
    
    var body: some View {
        
//        ZStack {
//            Color.red
//                .frame(width: .infinity,
//                       height: 200,
//                       alignment: Alignment.center)
//            Text("Hello, World!")
//        }
//        // .background(Color.red)
//        .ignoresSafeArea(edges: .top)
        
        ZStack {
            VStack(spacing: 0) {
                Color(red: 1,
                      green: 0.8,
                      blue: 0,
                      opacity: 1)
                Color(red: 1,
                      green: 0.8,
                      blue: 2,
                      opacity: 1)
            }
            Text("Hello world")
                .padding(50)
            /// Changing the `foregroundColor()` modifier to `foregroundStyle()`
            /// allows a little of the yellow and pink background colors
            /// to come through the `.secondary` gray color.
                .foregroundStyle(.secondary)
            /// Semantic colors are colors that are named according to their use
            /// rather than according to their hue.
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        
//        ZStack {
//            Color.red
//            Color.secondary
//            /// The secondary color makes the red look grayish.
//        }
    }
}
    






// MARK: - Previews

struct ColorsAndFrames_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ColorsAndFrames()
    }
}

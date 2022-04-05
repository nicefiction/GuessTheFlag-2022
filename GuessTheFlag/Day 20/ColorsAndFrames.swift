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
//        // .ignoresSafeArea(edges: .top)
//        .ignoresSafeArea()
        
        ZStack {
            VStack(spacing: 0) {
                Color.blue
                Color(red: 1,
                      green: 0.8,
                      blue: 0,
                      opacity: 1)
            }
            Text("Hello world")
                .padding(50)
                .foregroundStyle(.secondary)
                .background(.ultraThinMaterial)
        }
    }
}
    






// MARK: - Previews

struct ColorsAndFrames_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ColorsAndFrames()
    }
}

/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/what-is-behind-the-main-swiftui-view

import SwiftUI



struct WhatIsBehindTheMainSwiftUIView: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            Text("Hello Again")
            Text("Hello, World!")
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity)
            .background(Color.red)
        }
        /// Using `maxWidth` and `maxHeight` is different from using `width` and `height`
        /// — we’re not saying the text view must take up all that space, only that it can.
        /// If you have other views around, SwiftUI will make sure they all get enough space.
    }
}




// MARK: - PREVIEWS

struct WhatIsBehindTheMainSwiftUIView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        WhatIsBehindTheMainSwiftUIView()
    }
}

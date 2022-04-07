/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/environment-modifiers

import SwiftUI



struct EnvironmentModifiers: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            Text("Dorothy")
                .bold()
            /// The `.blur` modifier is only a regular modifier.
            /// It is not an environment modifier:
            /// It will not overwrite the parent modifier,
            /// instead, it will add to the `.blur` modifier of the parent.
                // .blur(radius: 20)
            Text("Glinda")
            Text("Ozma")
            Text("Olivia")
        }
        .font(.largeTitle)
        // .blur(radius: 5)
    }
}





// MARK: - PREVIEWS

struct EnvironmentModifiers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        EnvironmentModifiers()
    }
}

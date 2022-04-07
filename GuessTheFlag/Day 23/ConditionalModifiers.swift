/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/conditional-modifiers

import SwiftUI



struct ConditionalModifiers: View {
    
    // MARK: - PROPERTY WRAPPERS
    @State private var isBlue: Bool = true
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            Button("Switch Color") {
                isBlue.toggle()
            }
            /// This one is the most efficient for the SwiftUI framework:
            .foregroundColor(isBlue ? .blue : .red)
            
            if isBlue {
                Button("Switch Color") {
                    isBlue.toggle()
                }
                .foregroundColor(.blue)
            } else {
                Button("Switch Color") {
                    isBlue.toggle()
                }
                .foregroundColor(.red)
            }
        }
    }
}





// MARK: - PREVIEWS

struct ConditionalModifiers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ConditionalModifiers()
    }
}

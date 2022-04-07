/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
/// TIP:
/// Often folks wonder when it’s better to add a custom view modifier
/// versus just adding a new method to `View`,
/// and really it comes down to one main reason:
/// custom view modifiers can have their own stored properties,
/// whereas extensions to `View` cannot.

import SwiftUI



struct Watermark: ViewModifier {
    
    // MARK: - PROPERTIES
    
    let text: String
    
    
    
    // MARK: - METHODS
    
    func body(content: Content)
    -> some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.indigo)
        }
    }
}





struct HeaderStyle: ViewModifier {
    
    // MARK: - METHODS
    func body(content: Content)
    -> some View {
        
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.yellow)
    }
}





extension View {
    
    func createCustomHeaderStyle()
    -> some View {
        
        return modifier(HeaderStyle())
    }
    
    
    func addWatermark(using name: String)
    -> some View {
        
        return modifier(Watermark(text: name))
    }
}





struct CustomModifiers: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack(spacing: 0) {
            Text("Hello, World!")
                .modifier(HeaderStyle())

            Text("Hello Again")
                .createCustomHeaderStyle()
            /// `content`:
            Color
                .red
                .frame(width: 250,
                       height: 300)
                .addWatermark(using: "Dorothy Gale")
        }
    }
}





// MARK: - PREVIEWS

struct CustomModifiers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CustomModifiers()
    }
}

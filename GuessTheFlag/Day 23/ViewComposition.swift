/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/view-composition

import SwiftUI


struct CapsuleText: View {
    
    // MARK: - PROPERTIES
    
    let text: String
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        return Text(text)
            .font(.largeTitle)
            .bold()
            .padding()
            //.foregroundColor(.white)
            .frame(maxWidth: .infinity,
                   maxHeight: 100)
            .background(.yellow)
            .clipShape(Capsule())
            .padding()
    }
}



struct ViewComposition: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        return VStack {
            
            CapsuleText(text: "Hello World")
            
            CapsuleText(text: "Hello again")
                .foregroundColor(.white)
        }
    }
}






// MARK: - PREVIEWS

struct ViewComposition_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ViewComposition()
    }
}

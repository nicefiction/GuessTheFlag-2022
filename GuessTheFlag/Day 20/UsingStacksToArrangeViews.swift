/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/using-stacks-to-arrange-views

import SwiftUI



struct UsingStacksToArrangeViews: View {
    
    // MARK: - Computed properties
    
    var body: some View {
        
        VStack {
            Spacer()
            HStack(spacing: 100) {
                Text("1")
                Text("2")
                Text("3")
            }
            Spacer()
            HStack(spacing: 100) {
                Text("4")
                Text("5")
                Text("6")
            }
            Spacer()
            HStack(spacing: 100) {
                Text("7")
                Text("8")
                Text("9")
            }
            Spacer()
            Spacer()
        }
    }
}





// MARK: - Previews

struct UsingStacksToArrangeViews_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UsingStacksToArrangeViews()
    }
}

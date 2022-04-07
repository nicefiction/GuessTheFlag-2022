/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/views-as-properties

import SwiftUI



struct ViewsAsProperties: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    // MARK: - PROPERTIES
    
    var yellow: Text = Text("Yellow")
    var blue: some View = Text("Blue").bold().foregroundColor(.blue)
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var pink: some View {
        
        return VStack {
            
            Text("red")
            Text("pink")
            Text("fuchsia")
        }
    }
    
    
    var violett: some View {
        /// `Group` is layout agnostic
        /// and adapts to the layout in the `body`: `VStack` , `ZStack`, or `Hstack`,
        return Group {
            
            Text("indigo")
                .bold()
            Text("purple")
            Text("violett")
        }
    }
    
    
    @ViewBuilder var orange: some View {
        /// OLIVIER: XCode warns you when using the `return` keyword.
        Group {
            
            Text("yellow")
            Text("orange")
                .bold()
            Text("lime")
        }
    }
    
    /// PAUL:
    /// I prefer to use `@ViewBuilder `because it mimics the way `body` works:
    @ViewBuilder var citrus: some View {
        
        /// OLIVIER: When using `@ViewBuilder`
        /// there is no need to wrap the view content in a Group.
        Text("lemon")
            .bold()
        Text("orange")
        Text("lime")
    }
    
    
    var body: some View {
        
//        VStack {
//            yellow
//                .font(.largeTitle)
//                .bold()
//            .foregroundColor(.yellow)
//
//            blue
//                .font(.largeTitle)
//        }
        
//        pink
        
//        HStack {
//            violett
//        }
//        .font(.largeTitle)
//        .foregroundColor(.indigo)
        
//        VStack {
//
//            orange
//        }
//        .font(.largeTitle)
//        .foregroundColor(.orange)
        
        HStack {
            
            citrus
        }
        .font(.largeTitle)
        .foregroundColor(.yellow)
    }
}





// MARK: - PREVIEWS

struct ViewsAsProperties_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ViewsAsProperties()
    }
}

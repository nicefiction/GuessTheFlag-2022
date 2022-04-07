/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/why-modifier-order-matters

import SwiftUI



struct WhyModifierOrderMatters: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            Button("hello there") {
                print(type(of: self.body))
            }
            .font(.headline)
            .padding()
            .frame(width: 200,
                   height: 200,
                   alignment: .bottomLeading)
            .background(.yellow)
            
            Button {
                print(type(of: self.body))
                /// Prints:
                // Button<ModifiedContent<ModifiedContent<Text, _BackgroundStyleModifier<Color>>, _FrameLayout>>
                /// Each modifier creates a new struct with that modifier applied,
                /// rather than just setting a property on the view.
                /// Every time we modify a view
                /// SwiftUI applies that modifier by using generics:
                /// `ModifiedContent<OurThing, OurModifier>`
            } label: {
                Text("Hello, World!")
                    .background(.red)
                    .frame(width: 200,
                           height: 200)
            }
            
            Text("Hello again!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.indigo)
        }
    }
}




// MARK: - PREVIEWS

struct WhyModifierOrderMatters_Previews: PreviewProvider {
    
    static var previews: some View {
        
        WhyModifierOrderMatters()
    }
}

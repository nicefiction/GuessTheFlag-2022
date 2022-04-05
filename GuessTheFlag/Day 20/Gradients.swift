/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/gradients

import SwiftUI



struct Gradients: View {
    
    // MARK: - Computed properties
    
    var body: some View {
        
        
        /// LINEAR GRADIENT:
        LinearGradient(colors: [.blue, .white],
                       startPoint: .bottom,
                       endPoint: .top)
        
        LinearGradient(gradient: Gradient(
            stops: [
                Gradient.Stop.init(color: .yellow, location: 0.45),
                Gradient.Stop.init(color: .red, location: 0.50)
            ]),
                       startPoint: .bottom,
                       endPoint: .top)
        
        
        /// RADIAL GRADIENT:
        RadialGradient(gradient: Gradient(colors: [.yellow, .white]),
                       center: .center,
                       startRadius: 20,
                       endRadius: 200)
        
        
        /// The ANGULAR GRADIENT cycles colors around a circle
        /// rather than radiating outward:
        AngularGradient(
            gradient: Gradient(
                colors: [ .red, .indigo, .blue, .mint, .yellow, .orange, .pink]),
            center: UnitPoint.center)
    }
}





// MARK: - Previews

struct Gradients_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Gradients()
    }
}

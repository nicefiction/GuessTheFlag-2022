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
        
        /// PAUL:
        /// Gradients can be created
        /// using an array of colors
        /// or an array of color stops:
        RadialGradient(
            stops: [
                Gradient.Stop.init(color: Color(red: 0.1, green: 0.2, blue: 0.45),
                                   location: 0.3),
                Gradient.Stop.init(color: Color(red: 0.76, green: 0.15, blue: 0.26),
                                   location: 0.3),
            ],
            center: .top,
            startRadius: 200,
            endRadius: 400).ignoresSafeArea()
        
        /// OLIVIER:
        let gradientStops = [
            Gradient.Stop.init(color: .red,location: 0.3),
            Gradient.Stop.init(color: .blue, location: 0.3)
        ]
        RadialGradient(gradient: Gradient(stops: gradientStops),
                       center: .top,
                       startRadius: 200,
                       endRadius: 400).edgesIgnoringSafeArea(.all)
        
        
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

/// Source:
/// https://www.hackingwithswift.com/100/swiftui/21


import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    
    
    // MARK: - PROPERTIES
    
    let countryFlags: Array<String> = [
        "Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"
    ]
    let correctAnswer: Int = Int.random(in: 0..<3)
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .bottom,
                           endPoint: .top)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                    Text(countryFlags[correctAnswer])
                }
                .foregroundColor(.white)
                
                ForEach(0..<3, id: \.self) {
                    Image(countryFlags[$0])
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}





// MARK: - PREVIEWS

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}

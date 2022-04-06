/// Source:
/// https://www.hackingwithswift.com/100/swiftui/21


import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var isShowingAlert: Bool = false
    @State private var alertMessage: String = "Default message."
    @State private var countryFlags: Array<String> = [
        "Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"
    ].shuffled()
    @State private var correctAnswer: Int = Int.random(in: 0..<3)
    
    
    
    // MARK: - PROPERTIES
    
    let countryName: String = ""
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var countryTextHeader: String {
        
        let header = (countryFlags[correctAnswer] == "UK") || (countryFlags[correctAnswer] == "US") ? "The \(countryFlags[correctAnswer])" : "\(countryFlags[correctAnswer])"
        
        return header
    }
    
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.indigo, .white]),
                           startPoint: .top,
                           endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                VStack {
                    Text("Guess the flag of")
                        .font(.subheadline)
                        .fontWeight(.regular)
                    Text(countryTextHeader)
                        .font(.largeTitle)
                        .fontWeight(.medium)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 30) {
//                    ForEach(0..<3) { (indexNumber: Int) in
//                        Button(action: {
//                            print("The flag of \(countryFlags[indexNumber]) was tapped.")
//                        }, label: {
//                            Image(countryFlags[indexNumber])
//                        })
//                    }
                    ForEach(0..<3) { (indexNumber: Int) in
                        Button {
                            print("The flag of \(countryFlags[indexNumber]) was tapped.")
                            
                            tapFlag(with: indexNumber)
                        } label: {
                            Image(countryFlags[indexNumber])
                            /// The`renderingMode(.original)` modifier
                            /// tells SwiftUI to render the original image pixels
                            /// rather than trying to recolor them as a button:
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(color: .indigo,
                                        radius: 3)
                        }
                    }
                }
                .alert(alertMessage,
                       isPresented: $isShowingAlert) {
                    Button("OK", action: startNewRound)
                }
                
                Spacer()
                
                Text("Score: ??")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.indigo)
                
                Spacer()
            }
        }
    }
    
    
    
    // MARK: - HELPERMETHODS
    
    func tapFlag(with number: Int)
    -> Void {
        
        isShowingAlert.toggle()
        let outcome = number == correctAnswer ? "Success" : "Fail"
        let defaultMessage = "\(outcome)\nThis is the flag of \(countryFlags[number])"
        let customMessage = "\(outcome)\nThis is the flag of the \(countryFlags[number])"
        
        switch countryFlags[number] {
        case "UK", "US": alertMessage = customMessage
        default: alertMessage = defaultMessage
        }
    }
    
    
    func startNewRound()
    -> Void {
        
        // isShowingAlert = false
        countryFlags.shuffle()
        correctAnswer = Int.random(in: 0..<3)
    }
}





// MARK: - PREVIEWS

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}

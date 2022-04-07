/// Source:
/// https://www.hackingwithswift.com/100/swiftui/21


import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var isShowingAlert: Bool = false
    @State private var isShowingEndScore: Bool = false
    
    @State private var alertMessage: String = ""
    @State private var countryFlags: Array<String> = [
        "Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"
    ].shuffled()
    @State private var correctAnswer: Int = Int.random(in: 0..<3)
    @State private var gameScore: Int = 0 {
        /// OLIVIER:
        /// This makes sure the `gameScore` can never be less than `0`:
        didSet {
            if gameScore < 0 {
                gameScore = 0
            }
        }
    }
    @State private var gameRound: Int = 1
    @State private var maxGameRound: Int = 8
    
    
    
    // MARK: - PROPERTIES
    
    var uiColor: Color = Color.blue

    
    
    // MARK: - COMPUTED PROPERTIES
    var countryTextHeader: String {
        
        let header = (countryFlags[correctAnswer] == "UK") || (countryFlags[correctAnswer] == "US") ? "The \(countryFlags[correctAnswer])" : "\(countryFlags[correctAnswer])"
        
        return header
    }
    
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [uiColor, .white]),
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
                            FlagImage(flags: countryFlags,
                                      indexNumber: indexNumber,
                                      color: uiColor)
                        }
                    }
                }
                .alert(alertMessage,
                       isPresented: gameRound < maxGameRound ? $isShowingAlert : $isShowingEndScore) {
                    Button("OK", action: startNewRound)
                }
                
                Spacer()
                
                VStack {
                    Text("Score: \(gameScore)")
                        .applyScoreHeaderStyle(using: uiColor)
                    Text("Round \(gameRound) of \(maxGameRound)")
                        .font(.subheadline)
                        .bold()
                }
                .foregroundColor(uiColor)
                
                Spacer()
            }
        }
    }
    
    
    
    // MARK: - HELPERMETHODS
    
    func tapFlag(with number: Int)
    -> Void {
        
        checkAnswer(with: number)
        gameRound == maxGameRound ? isShowingEndScore.toggle() : isShowingAlert.toggle()
    }
    
    
    func startNewRound()
    -> Void {
        
        // isShowingAlert = false
        increaseGameRoundCount()
        countryFlags.shuffle()
        correctAnswer = Int.random(in: 0..<3)
    }
    
    
    func increaseGameRoundCount()
    -> Void {
        
        if gameRound < maxGameRound {
            gameRound += 1
        } else {
            startNewGame()
        }
    }
    
    
    func startNewGame()
    -> Void {
        
        gameRound = 1
        gameScore = 0
        alertMessage = "Starting new game."
    }
    
    
    func checkAnswer(with number: Int)
    -> Void {
        
        let isUKOrUS: Bool = countryFlags[number] == "UK" || countryFlags[number] == "US" ? true : false
        let defaultMessage = "the flag of \(countryFlags[number])."
        let customMessage = "the flag of the \(countryFlags[number])."
        let chosenMessage = isUKOrUS ? customMessage : defaultMessage
        
        if number == correctAnswer && gameRound < maxGameRound {
            gameScore += 1
            alertMessage = "Success! This is indeed \(chosenMessage)"
            
        } else if number == correctAnswer && gameRound == maxGameRound {
            gameScore += 1
            alertMessage = "Success! This is indeed \(chosenMessage)\nYour end score is \(gameScore) out of \(maxGameRound)."
            
        } else if number != correctAnswer && gameRound == maxGameRound {
            gameScore -= 1
            alertMessage = "Oh no... this is \(chosenMessage)\nYour end score is \(gameScore) out of \(maxGameRound)."
            
        } else {
            gameScore -= 1
            alertMessage = "Oh no... this is \(chosenMessage)"
        }
    }
}





// MARK: - PREVIEWS

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}

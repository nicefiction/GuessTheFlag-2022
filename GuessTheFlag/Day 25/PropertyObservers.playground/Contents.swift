/// Source:
/// https://www.hackingwithswift.com/quick-start/beginners/how-to-take-action-when-a-property-changes

import Foundation


struct Game {
    
    /// OLIVIER:
    /// The variable was not assigned an initial value.
    /// This makes the Property Observer looks a bit like a Computed Property here:
    var score: Int {
        willSet {
            print("The current score is \(score).\nThe new score will be \(newValue).")
        }
        didSet {
            print("The old score was \(oldValue).\nThe new score is \(score).")
        }
    }
}


var game: Game = Game.init(score: 0)
game.score = 1



struct App {
    
    var contacts: Array<String> = Array<String>() {
        willSet {
            print("The current array is: \(contacts).\nThe new value will be \(newValue).")
        }
        didSet {
            print("The old value was: \(oldValue).\nThe new array is \(contacts).")
        }
    }
}


var app = App()
app.contacts.append("Dorothy")
app.contacts.append("Glinda")
app.contacts.append("Ozma")

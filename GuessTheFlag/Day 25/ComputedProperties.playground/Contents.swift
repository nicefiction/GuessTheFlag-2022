/// Source:
/// https://www.hackingwithswift.com/quick-start/beginners/how-to-compute-property-values-dynamically

import Foundation


struct Employee {
    
    var vacationAllocated: Int
    var vacationTaken: Int
    
    var vacationRemaining: Int {
        get {
            print("Vacation remaining: \(vacationAllocated - vacationTaken)")
            return vacationAllocated - vacationTaken
        }
        set {
            print("Allocated vacation = \(vacationRemaining + newValue)")
            return vacationAllocated = vacationRemaining + newValue
        }
    }
}



var dorothy = Employee(vacationAllocated: 10,
                       vacationTaken: 2)

// dorothy.vacationRemaining
dorothy.vacationRemaining = 10

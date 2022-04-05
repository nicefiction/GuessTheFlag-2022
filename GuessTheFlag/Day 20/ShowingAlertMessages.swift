/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/showing-alert-messages

import SwiftUI



struct ShowingAlertMessages: View {
    
    // MARK: - Property Wrappers
    
    @State private var isShowingAlert: Bool = false
    
    
    
    // MARK: - Computed Properties
    
    var body: some View {
        
        Button("Toggle Alert") {
            isShowingAlert.toggle()
        }
        .alert("Important Alert",
               isPresented: $isShowingAlert) {
            
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Read the message here.")
        }
    }
}





// MARK: - Previews

struct ShowingAlertMessages_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ShowingAlertMessages()
    }
}

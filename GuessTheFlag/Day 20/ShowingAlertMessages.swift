/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/showing-alert-messages

import SwiftUI



struct ShowingAlertMessages: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var isShowingAlert: Bool = false
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        Button("Show Alert") {
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





// MARK: - PREVIEWS

struct ShowingAlertMessages_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ShowingAlertMessages()
    }
}

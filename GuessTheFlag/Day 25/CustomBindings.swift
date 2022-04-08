/// Source:
/// https://www.hackingwithswift.com/guide/ios-swiftui/2/2/key-points

import SwiftUI



struct CustomBindings: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var hasAgreedToTerms: Bool = false
    @State private var hasAgreedToPrivacyPolicy: Bool = false
    @State private var hasAgreedToEmails: Bool = false
    
    
    
    // MARK: - PROPERTIES
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        let hasAgreedToEmailsToggle = Binding<Bool>(
            get: {
                hasAgreedToEmails
            },
            set: {
                hasAgreedToEmails = $0
            }
        )
        
        
        let agreedToAll = Binding<Bool>(
            
            get: {
                hasAgreedToTerms && hasAgreedToPrivacyPolicy && hasAgreedToEmails
            },
            set: {
                hasAgreedToTerms = $0
                hasAgreedToPrivacyPolicy = $0
                hasAgreedToEmails = $0
            }
        )
        
        
        Form {
            Toggle("Terms", isOn: $hasAgreedToTerms)
            Toggle("Privacy Policy", isOn: $hasAgreedToPrivacyPolicy)
            Toggle("Emails", isOn: hasAgreedToEmailsToggle)
            Toggle("Agree to all", isOn: agreedToAll)
        }
    }
}







// MARK: - PREVIEWS

struct CustomBinding_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CustomBindings()
    }
}

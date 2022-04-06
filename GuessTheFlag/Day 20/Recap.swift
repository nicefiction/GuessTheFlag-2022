// MARK: - LIBRARIES
import SwiftUI



struct Recap: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var isShowingAlert: Bool = false
    
    
    
    // MARK: - PROPERTIES
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        ZStack {
//            AngularGradient(gradient: Gradient(colors: [.blue, .pink, .purple]),
//                            center: UnitPoint.center)
            
//            RadialGradient(gradient: Gradient(colors: [.orange, .red]),
//                           center: UnitPoint.center,
//                           startRadius: 20,
//                           endRadius: 150)
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .bottom,
                           endPoint: .top)
            
            Button {
                isShowingAlert.toggle()
            } label: {
                Label("Edit",systemImage: "pencil")
                    .padding()
            }
            .buttonStyle(.borderedProminent)
            .alert("Important Alert",
                   isPresented: $isShowingAlert) {
                Button("Cancel", role: .cancel) {}
                Button("OK", role: .none, action: {})
                Button("Delete",
                       role: .destructive,
                       action: deleteAction)
            } message: {
                Text("Alert message comes here.")
            }
        }
        .ignoresSafeArea(.all)
    }
    
    
    
    // MARK: - METHODS
    
    func deleteAction()
    -> Void {
        print("The Delete button is tapped.")
    }
}





// MARK: - PREVIEWS

struct Recap_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Recap()
    }
}

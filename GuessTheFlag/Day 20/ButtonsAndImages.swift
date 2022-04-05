/// Source:
/// https://www.hackingwithswift.com/books/ios-swiftui/buttons-and-images

import SwiftUI



struct ButtonsAndImages: View {
    
    // MARK: - Computed Properties
    
    var body: some View {
        
        /// SCREEN 1:
        VStack(spacing: 50) {
            Button("Delete Selection") {
                print("Deleting the selection.")
            }
            
            Button("Delete Selection",
                   role: .destructive,
                   action: deleteSelection)
            
            Button(role: .destructive,
                   action: deleteSelection,
                   label: {
                
                Image(systemName: "trash")
            })
            
            Button(action: {
                print("The Edit button is tapped.")
            },
                   label: {
                /// If you want both text and image at the same time,
                /// SwiftUI has a dedicated type called `Label`:
                Label("Edit",
                      systemImage: "pencil")
            })
            
            Button {
                print("The Edit button is tapped.")
            } label: {
                Label("Edit",
                      systemImage: "pencil")
            }
        }
        
        /// SCREEN 2:
        VStack(spacing: 40) {
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button 3") {}
                .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            Button("Button 5") {}
                .buttonStyle(.borderedProminent)
            /// To customize the colors used for a bordered button:
                .tint(.green)
            
            Button(action: {
                print("The custom button was tapped.")
            }, label: {
                Text("Custom Button")
                    .padding()
                    .background(.yellow)
                    .foregroundColor(.black)
            })
            
            Button {
                print("The custom button was tapped.")
            } label: {
                Text("Custom Button")
                    .padding()
                    .foregroundColor(.black)
                    .background(.orange)
            }
        }
    }
    
    
    
    // MARK: - Helper Methods
    
    func deleteSelection()
    -> Void {
        
        print("Deleting the selection.")
    }
}





// MARK: - Previews

struct ButtonsAndImages_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ButtonsAndImages()
    }
}

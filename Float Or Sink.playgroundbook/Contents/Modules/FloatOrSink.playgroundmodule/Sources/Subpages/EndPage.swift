import SwiftUI

public struct EndPage : View {
    private let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Congratulations !")
                Text("You've completed the theorical learning path trough the dynamics of Float or Sink")
                Text("Now let's get our hands dirty !")
            }
            .storyTell()
        
            Spacer()
            
            Button(action: action) {
                HStack(spacing: 18) {
                    Text("Next Page".uppercased())
                        .font(.custom(appFont.avenirMedium, size: 24)) 
                        .foregroundColor(appColor.blue)
                    
                    Triangle()
                        .fill(appColor.blue)
                        .frame(width: 18, height: 22)
                        .rotationEffect(.degrees(-90))
                }
            }
        }
        .padding(EdgeInsets(top: 420, leading: 80, bottom: 420, trailing: 80))
    }
}


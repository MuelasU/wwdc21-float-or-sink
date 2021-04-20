import SwiftUI

public struct ForcesPage : View {
    public init() {}
    
    public var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Nice, you discovered that")
                    .storyTell()
                Text("apparent weight = real weight - displaced water weight")
                    .font(.custom(appFont.georgiaItalic, size: 24))
                    .foregroundColor(appColor.darkBlue)
                Text("In terms of forces, we have something like that")
                    .storyTell()
            }
            
            Spacer()
            
            ZStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 0) {
                    ForceArrow(color: appColor.green, isUpward: true, label: "displaced water weight")
                    ForceArrow(color: appColor.red, isUpward: false, label: "real weight")
                }
                
                Ball(diameter: 10)
                    .scaleEffect(0.8)
                    .offset(x: -85, y: -40)
            }
            .padding(100)
            
            Spacer ()
        }
        .padding(.top, 80)
    }
}


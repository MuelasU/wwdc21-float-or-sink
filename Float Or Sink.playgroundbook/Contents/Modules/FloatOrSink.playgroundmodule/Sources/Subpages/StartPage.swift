
import SwiftUI

public struct StartPage : View {
    private let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        VStack {
            Text("Float Or Sink")
                .font(.custom(appFont.avenirBold, size: 72))
                .foregroundColor(appColor.darkBlue)
            
            Spacer()
            
            Button(action: action) {
                Text("Start".uppercased())
                    .font(.custom(appFont.avenirLight, size: 72))
                    .foregroundColor(appColor.blue)
                    .padding(EdgeInsets(top: 15, leading: 30, bottom: 15, trailing: 30))
                    .background(RoundedRectangle(cornerRadius: 24)
                                    .stroke(appColor.blue, lineWidth: 2))
            }
            
            Spacer()
            
            VStack {
                Ball(diameter: 12)
                    .offset(y: 120)
                
                WaterShape()
                    .stroke(appColor.blue)
                    .background(WaterShape()
                                    .fill(appColor.lightBlue)
                                    .opacity(0.4))
                    .frame(height: 500)
            }
            .frame(height: 400)
        }
        .padding(.top, 80)
    }
}

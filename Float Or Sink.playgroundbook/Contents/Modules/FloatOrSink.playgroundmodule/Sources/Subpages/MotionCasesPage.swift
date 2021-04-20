import SwiftUI

extension Motion {
    var ballYOffset: CGFloat {
        switch self {
        case .Sink:
            return -40 
        case .Float:
            return 40
        case .Rest:
            return 0
        }
    }
}

public struct MotionCasesPage : View {
    var motionCase: Motion
    
    public init(motionCase: Int) {
        self.motionCase = Motion(rawValue: motionCase)!
    }
    
    public var body: some View {
        VStack {
            Text("So there are three motion cases")
                .storyTell()
            
            Spacer()
            
            ZStack {
                VStack(spacing: 0) {
                    ForceArrow(color: appColor.green, isUpward: true)
                    ForceArrow(color: appColor.red, isUpward: false)
                }
                
                Ball(diameter: 10)
                    .scaleEffect(0.8)
                    .offset(y: motionCase.ballYOffset)
                    .animation(.easeInOut)
            }
            
            Spacer()
            
            HStack(spacing: 50) {
                Text("real weight")
                Text(motionCase.ballVsWaterWeightSignal)
                Text("displaced water\nweight")
            }
            .font(.custom(appFont.georgia, size: 24))
            .lineSpacing(5)
            
            Spacer()
            
            Text(motionCase.description.uppercased())
                .font(.custom(appFont.avenirBold, size: 48))
                .foregroundColor(appColor.darkBlue)
            
            Spacer()
        }
        .padding(.top, 80)
    }
}

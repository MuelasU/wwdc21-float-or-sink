import SwiftUI

public struct DisplacedWaterPage : View {
    private let story = "Let's take a look at the displaced water\nMaybe we found something between its weight and the “weight loss” of the ball ?\nCan you notice any relation ?"
    @State private var showHint = true
    @State private var balanceMeasurement: Float = 0
    @Binding private var recipientIsInRegion: Bool
    
    public init(recipientIsInRegion: Binding<Bool>) {
        self._recipientIsInRegion =  recipientIsInRegion
    }
    
    //DRAG GESTURE
    @GestureState private var startOffset: CGSize? = nil
    @State private var recipientOffset: CGSize = CGSize()
    
    var recipientDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                var newOffset = startOffset ?? recipientOffset
                newOffset.width += value.translation.width
                newOffset.height += value.translation.height
                guard (newOffset.width > -107 && newOffset.width < 327
                        && newOffset.height < 20) else {
                    return
                }
                recipientOffset = newOffset
            }
            .onEnded { _ in
                withAnimation(.easeInOut(duration: 0.8)) {
                    showHint = false
                }
                checkRecipientLocation()
            }
            .updating($startOffset, body: { (_, startOffset, _) in
                startOffset = startOffset ?? recipientOffset
            })
    }
    
    public var body: some View {
        VStack {
            Text(story)
                .storyTell()
            
            Spacer()
            
            ZStack {
                HStack(alignment: .bottom, spacing: 50) {
                    ZStack(alignment: .bottom) {
                        VStack {
                            Dynamometer(mass: ballMass - ballVolume)
                            
                            Ball(mass: ballMass, diameter: 10)
                                .scaleEffect(0.4)
                                .offset(y: -120)
                        }
                        .offset(y: 80)
                        
                        Becker()
                    }
                    .scaleEffect(0.8, anchor: .bottom)
                    
                    BalanceRecipient()
                        .stroke(lineWidth: 4)
                        .background(BalanceRecipient()
                                        .fill(appColor.lightBlue)
                                        .opacity(0.4))
                        .offset(recipientOffset)
                        .gesture(recipientDrag)
                        .allowsHitTesting(!recipientIsInRegion)
                        .frame(width: 105, height: 52)
                        .zIndex(20)
                    
                    Balance(mass: balanceMeasurement)
                        .zIndex(10)
                }
                
                if (showHint) {
                    VStack(spacing: 20) {
                        Text("Put it on the balance")
                            .font(.custom(appFont.avenirMedium, size: 16))
                            .foregroundColor(appColor.gray)
                        
                        CurverArrow()
                            .rotation(.degrees(0))
                            .fill(appColor.gray)
                            .frame(width: 150, height: 120)
                            .scaleEffect(1.2)
                    }
                    .offset(x: 100, y: 50)
                }
            }
        }
        .padding(EdgeInsets(top: 80, leading: 0, bottom: 80, trailing: 0))
    }
    
    //FUNCTIONS
    private func checkRecipientLocation() {
        if (recipientOffset.width > 160 && recipientOffset.width < 245
            && recipientOffset.height > -80 && recipientOffset.height < -54) {
            withAnimation(.easeIn(duration: 0.8)) {
                recipientIsInRegion = true
                balanceMeasurement = ballVolume
                recipientOffset.height = -62
            }
        } else {
            recipientIsInRegion = false
        }
    }
}


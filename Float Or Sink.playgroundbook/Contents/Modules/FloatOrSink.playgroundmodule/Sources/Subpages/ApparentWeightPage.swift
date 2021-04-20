import SwiftUI

public struct ApparentWeightPage : View {
    private let story = "What happens if we sink the conjuct in water?\nLook to the dynamometer measure. What happened?"
    @State private var showHint = true
    @State private var dynamometerMeasurement: Float = 80
    @State private var ballOffset: CGSize = CGSize()
    public let ballMass: Float = 80
    public let ballDiameter: Float = 5
    public var ballVolume: Float {
        Float.pi / 6 * powf(ballDiameter, 3)
    }
    @Binding private var conjunctIsInRegion: Bool
    
    public init(conjunctIsInRegion: Binding<Bool>) {
        self._conjunctIsInRegion = conjunctIsInRegion
    }
    
    //DRAG GESTURE
    @GestureState private var startOffset: CGSize? = nil
    @State private var conjunctOffset: CGSize = CGSize(width: -300, height: -400)
    
    var conjunctDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                var newOffset = startOffset ?? conjunctOffset
                newOffset.width += value.translation.width
                newOffset.height += value.translation.height
                guard (newOffset.width > -490 && newOffset.width < 490
                        && newOffset.height < 110 && newOffset.height > -500) else {
                    return
                }
                conjunctOffset = newOffset
            }
            .onEnded { _ in
                withAnimation(.easeInOut(duration: 0.8)) {
                    showHint = false
                }
                checkConjunctLocation()
            }
            .updating($startOffset, body: { (_, startOffset, _) in
                startOffset = startOffset ?? conjunctOffset
            })
    }
    
    //BODY
    public var body: some View {
        VStack() {
            Text(story)
                .storyTell()
            
            Spacer()
            
            ZStack {
                VStack(spacing: -50) {
                    Dynamometer(mass: dynamometerMeasurement)
                    
                    Ball(mass: ballMass, diameter: 10)
                        .offset(ballOffset)
                        .scaleEffect(0.4)
                }
                .offset(conjunctOffset)
                .gesture(conjunctDrag)
                .scaleEffect(0.8)
                .allowsHitTesting(!conjunctIsInRegion)
                
                HStack(alignment: .bottom, spacing: -20) {
                    Becker()
                        .scaleEffect(0.8, anchor: .bottom)
                    
                    BalanceRecipient()
                        .stroke(lineWidth: 4)
                        .background(
                            GeometryReader { geo in
                                VStack {
                                    Spacer(minLength: 0)
                                    
                                    Rectangle()
                                        .foregroundColor(appColor.lightBlue)
                                        .opacity(0.4)
                                        .frame(
                                            height: geo.size.height * (conjunctIsInRegion ? 1 : 0),
                                            alignment: .bottom
                                        )
                                }
                            }
                            .mask(BalanceRecipient())
                        )
                        .frame(width: 105, height: 52)
                }
                .padding(.leading, 120)
                
                if (showHint) {
                    HStack(alignment: .top) {
                        Arrow()
                            .rotation(.degrees(60))
                            .fill(appColor.gray)
                            .rotation3DEffect(.degrees(180), axis: (1, 0, 0))
                            .frame(width: 32, height: 112)
                        
                        Text("Place it under water")
                            .font(.custom(appFont.avenirMedium, size: 16))
                            .foregroundColor(appColor.gray)
                            .offset(x: 10, y: 20)
                    }
                    .offset(x: -20, y: -350)
                }
            }
        }
        .padding(.top, 80)
    }
    
    //FUNCTIONS
    private func checkConjunctLocation() {
        if (conjunctOffset.width > -42.5 && conjunctOffset.width < 67.2
            && conjunctOffset.height > -180 && conjunctOffset.height < 0.5) {
            withAnimation(.easeInOut(duration: 1.5)) {
                conjunctIsInRegion = true
                measureWeight()
            }
        } else {
            conjunctIsInRegion = false
        }
    }
    
    private func measureWeight() {
        withAnimation(Animation.interpolatingSpring(stiffness: 70, damping: 5)) {
            dynamometerMeasurement = ballMass - ballVolume
            ballOffset.height -= CGFloat(
                (Dynamometer.NORMAL_SPRING_HEIGHT * 
                    (ballMass - dynamometerMeasurement) / Dynamometer.MAX_MASS) *
                    1/0.4
            )
        }
    }
}

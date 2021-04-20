import SwiftUI

public struct RealWeightPage : View {
    private let story = "First of all, I introduce you the dynamometer\nIt measures the weight of an object\nWhat's the weight of our ball ?"
    public let ballMass: Float = 80
    @State private var dynamometerMeasurement: Float = 0
    @State private var showHint = true
    @Binding private var ballIsInRegion: Bool
    
    public init(ballIsInRegion: Binding<Bool>) {
        self._ballIsInRegion = ballIsInRegion
    }
    
    //DRAG GESTURE
    @GestureState private var startOffset: CGSize? = nil
    @State private var ballOffset: CGSize = CGSize()
    var ballDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                var newOffset = startOffset ?? ballOffset
                newOffset.width += value.translation.width
                newOffset.height += value.translation.height
                guard (newOffset.width > -380 && newOffset.width < 380
                        && newOffset.height < 200 && newOffset.height > -520) else {
                    return
                }
                ballOffset = newOffset
            }
            .onEnded { _ in
                withAnimation(.easeInOut(duration: 0.8)) {
                    showHint = false
                }
                checkBallLocation()
            }
            .updating($startOffset, body: { (_, startOffset, _) in
                startOffset = startOffset ?? ballOffset
            })
    }
    
    //BODY
    public var body: some View {
        VStack() {
            Text(story)
                .storyTell()
            
            Spacer()
            
            ZStack {
                VStack {
                    Dynamometer(mass: dynamometerMeasurement)
                    
                    Ball(mass: ballMass, diameter: 13)
                        .scaleEffect(0.4)
                        .offset(ballOffset)
                        .gesture(ballDrag)
                        .allowsHitTesting(!ballIsInRegion)
                }
                
                if (showHint) {
                    HStack(alignment: .top) {
                        Arrow()
                            .fill(appColor.gray)
                            .frame(width: 32, height: 112)
                        
                        Text("Unite them")
                            .font(.custom(appFont.avenirMedium, size: 16))
                            .foregroundColor(appColor.gray)
                            .offset(x: 10, y: 20)
                    }
                    .offset(x: 160, y: 80)
                }
            }
            
            Spacer()
        }
        .padding(.top, 80)
    }
    
    //FUNCTIONS
    private func checkBallLocation () {
        if (
            ballOffset.width > -38 && ballOffset.width < 48 &&
                ballOffset.height > -182 && ballOffset.height < -120
        ) {
            ballIsInRegion = true
            measureWeight()
        } else {
            ballIsInRegion = false
        }
    }
    
    private func measureWeight() {
        withAnimation(Animation.interpolatingSpring(stiffness: 70, damping: 5)
                        .speed(0.75)) {
            dynamometerMeasurement = ballMass
            ballOffset.height += CGFloat(Dynamometer.NORMAL_SPRING_HEIGHT * (ballMass / Dynamometer.MAX_MASS))
        }
    }
}


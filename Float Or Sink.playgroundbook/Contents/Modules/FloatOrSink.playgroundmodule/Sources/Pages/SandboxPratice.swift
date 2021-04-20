import SwiftUI

public struct SandboxPratice : View {
    private let massRange: ClosedRange<Float> = 10...200
    private let diameterRange: ClosedRange<Float> = 2...8
    private let waterDensity: Float = 1
    
    @State private var ballMass: Float = 80 //g
    @State private var ballDiameter: Float = 5 //cm
    
    private var ballVolume: Float {
        Float.pi / 6 * powf(ballDiameter, 3)
    }
    
    private var ballDensity: Float {
        ballMass / ballVolume
    }
    
    private var motionCase: Motion {
        ballDensity > waterDensity ? .Sink : .Float
    }
    
    private var waterHeightInBecker: Float {
        10 + (motionCase == .Float ? 0 :
                (powf(ballDiameter, 3) / (25*6)))
    }
    
    private var ballYOffset: CGFloat {
        -CGFloat(
            motionCase == .Float ?
                waterHeightInBecker * ((245/14) * 1.4) - 30:
                0
        )
    }
    
    public init() {}
    
    public var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 40) {
                SliderControlRow(label: "Weight :", value: $ballMass, unit: "g", range: massRange)
                
                SliderControlRow(label: "Diameter :", value: $ballDiameter, unit: "cm", range: diameterRange)
                
                HStack(spacing: 20) {
                    Text("Density :")
                        .font(.custom(appFont.avenir, size: 24))
                        .frame(width: 120, alignment: .leading)
                    Text(String(format: "%.02f", ballDensity) + "g/cm³")
                        .font(.custom(appFont.avenir, size: 18))
                }
                .padding(.top, 8)
            }
            .foregroundColor(appColor.darkBlue)
            .padding(EdgeInsets(top: 120, leading: 100, bottom: 0, trailing: 100))
            
            Spacer()
            
            ZStack(alignment: .bottom) {
                Ball(diameter: ballDiameter)
                    .scaleEffect(1.2)
                    .offset(x: -13, y: ballYOffset)
                    .animation(motionCase == .Float ?
                                .interpolatingSpring(stiffness: 20, damping: 5) :
                                .easeIn(duration: 1.5),
                               value: motionCase)
                    .padding(.bottom, 13)
                
                Becker(waterHeight: waterHeightInBecker)
                    .animation(Animation.easeInOut(duration: 1).delay(motionCase == .Float ? 0.5 : 0), value: motionCase)
                    .scaleEffect(1.4, anchor: .bottom)
            }
            .padding(.bottom, 80)
        }
    }
}

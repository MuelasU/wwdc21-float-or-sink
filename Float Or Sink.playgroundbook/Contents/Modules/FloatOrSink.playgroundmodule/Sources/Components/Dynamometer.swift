import SwiftUI

public struct Dynamometer : View {
    public var mass: Float
    public static let MAX_MASS: Float = 200
    public static let NORMAL_SPRING_HEIGHT: Float = 171
    private var springExtendScale: Float {
        1.0 + mass/Dynamometer.MAX_MASS
    }
    private var hookOffset: Float {
        3 + (Dynamometer.NORMAL_SPRING_HEIGHT * (springExtendScale - 1))
    }
    
    public init(mass: Float = 0) {
        self.mass = mass
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            ZStack {
                DynamometerDisplay()
                    .fill(appColor.darkBlue)
                
                Circle()
                    .frame(width: 73)
                    .foregroundColor(.white)
                    .offset(y: -6)
                
                Text(String(format: "%02.0f", mass) + "g")
                    .font(.custom(appFont.avenirMedium, size: 24))
                    .offset(y: -6)
            }
            .frame(width: 83, height: 100)
            
            RoundedRectangle(cornerRadius: 6)
                .fill(appColor.lightGrayBlue)
                .frame(width: 56, height: 164)
                .overlay(Image(uiImage: UIImage(#imageLiteral(resourceName: "spring.png")))
                            .frame(height: CGFloat(Dynamometer.NORMAL_SPRING_HEIGHT))
                            .scaleEffect(y: CGFloat(springExtendScale), anchor: .top)
                            .offset(y: 2))
            
            Image(uiImage: UIImage(#imageLiteral(resourceName: "hook.png")))
                .offset(y: CGFloat(hookOffset))
        }
    }
}

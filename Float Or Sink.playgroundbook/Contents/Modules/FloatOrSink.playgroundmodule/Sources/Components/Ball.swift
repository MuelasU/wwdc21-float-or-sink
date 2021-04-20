
import SwiftUI

public struct Ball : View {
    private let diameter: Float //cm
    private var pxDiameter: CGFloat {
        (185*1.4 / 10) * CGFloat(diameter)
    }
    
    public init(mass: Float = 80, diameter: Float = 5) {
        self.diameter = diameter
    }
    
    public var body: some View {
        Image(uiImage: UIImage(#imageLiteral(resourceName: "ball.png")))
            .resizable()
            .frame(width: pxDiameter, height: pxDiameter)
    }
}

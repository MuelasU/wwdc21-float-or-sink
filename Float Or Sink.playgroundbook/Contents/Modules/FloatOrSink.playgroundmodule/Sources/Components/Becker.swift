import SwiftUI

public struct Becker : View {
    private let waterHeight: Float //cm
    
    private var pxWaterHeight: CGFloat {
        CGFloat((245/14) * waterHeight)
    }
    
    public init(waterHeight: Float = 14) {
        self.waterHeight = waterHeight
    }
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            BeckerGlass()
                .stroke(Color.black, lineWidth: 5)
            
            BeckerWater()
                .fill(appColor.lightBlue)
                .opacity(0.4)
                .frame(width: 185, height: pxWaterHeight)
                .offset(x: -10, y: -10)
            
            BeckerReflex()
                .frame(width: 12, height: CGFloat(190/14 * waterHeight))
                .offset(x: -78, y: -30)
                .foregroundColor(.white)
        }
        .frame(width: 242, height: 290)
    }
}

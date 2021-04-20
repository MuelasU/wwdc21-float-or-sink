import SwiftUI

public struct Balance: View {
    private let mass: Float
    
    public init(mass: Float = 0) {
        self.mass = mass
    }
    
    public var body: some View {
        ZStack {
            BalanceBody()
                .stroke(lineWidth: 5)
                .background(BalanceBody()
                                .fill(appColor.gray))
                
            BalanceVisor()
                .fill(appColor.darkGray)
                .frame(width: 110, height: 30)
                
            Text(String(format:"%02.0f.00g", mass))
                .font(.custom(appFont.avenirBold, size: 14))
                .foregroundColor(Color.white)
        }
        .frame(width: 190, height: 64)
    }
}

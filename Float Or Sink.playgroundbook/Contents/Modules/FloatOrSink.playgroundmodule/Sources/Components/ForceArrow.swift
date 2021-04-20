import SwiftUI

public struct ForceArrow : View {
    private let color: Color
    private let label: String?
    private let isUpward: Bool
    
    public init(color: Color, isUpward: Bool, label: String? = nil) {
        self.color = color
        self.isUpward = isUpward
        self.label = label
    }
    
    public var body: some View {
        HStack {
            VStack(spacing: 0) {
                Rectangle()
                    .frame(width: 40, height: 180)
                
                Triangle()
                    .frame(width: 90, height: 90)
            }
            .rotationEffect(.degrees(isUpward ? 180 : 0))
            .foregroundColor(color)
            
            if let lbl = label {
                Text(lbl)
                    .font(.custom(appFont.georgia, size: 24))
                    .offset(x: 30, y: 40 * (isUpward ? -1 : 1 ))
            }
        }
    }
}


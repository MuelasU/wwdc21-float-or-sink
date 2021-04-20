import SwiftUI

public struct NextButton : View {
    private let action : () -> Void
    private var isEnabled: Bool
    
    public init(action : @escaping () -> Void, isEnabled: Bool) {
        self.action = action
        self.isEnabled = isEnabled
    }
    
    public var body: some View {
        Button(action: action) {
                Triangle()
                    .foregroundColor(isEnabled ? appColor.grayBlue : appColor.lightGray)
                    .frame(width: 35, height: 40)
                    .rotationEffect(.degrees(-90))
            }
            .disabled(!isEnabled)
            .padding(.bottom, 80)
    }
}


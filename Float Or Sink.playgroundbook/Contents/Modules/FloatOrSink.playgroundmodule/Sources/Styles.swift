
import SwiftUI

public struct appColor {
    public static let blue = Color(#colorLiteral(red: -0.2504956126213074, green: 0.5790769457817078, blue: 0.7921361327171326, alpha: 1.0))
    public static let lightBlue = Color(#colorLiteral(red: -0.165940523147583, green: 0.8603221774101257, blue: 1.0181951522827148, alpha: 1.0))
    public static let darkBlue = Color(#colorLiteral(red: 0.0117259556427598, green: 0.2910686731338501, blue: 0.45632505416870117, alpha: 1.0))
    public static let grayBlue = Color(#colorLiteral(red: 0.4998288154602051, green: 0.7998897433280945, blue: 0.9020231366157532, alpha: 1.0))
    public static let lightGrayBlue = Color(#colorLiteral(red: 0.8260443806648254, green: 0.8761693835258484, blue: 0.9137715697288513, alpha: 1.0))
    
    public static let gray = Color(#colorLiteral(red: 0.7685508131980896, green: 0.7686811089515686, blue: 0.7685337066650391, alpha: 1.0))
    public static let lightGray = Color(#colorLiteral(red: 0.9240989089012146, green: 0.9093679189682007, blue: 0.9094610810279846, alpha: 1.0))
    public static let darkGray = Color(#colorLiteral(red: 0.22350353002548218, green: 0.2235475480556488, blue: 0.22349771857261658, alpha: 1.0))
        
    public static let red = Color(#colorLiteral(red: 0.7119872570037842, green: 0.04252447932958603, blue: 0.10377588123083115, alpha: 1.0))
    public static let green = Color(#colorLiteral(red: 0.5415597558021545, green: 0.6019092202186584, blue: -0.17646527290344238, alpha: 1.0))
}

public struct appFont {
    public static let avenir = "Avenir-Book"
    public static let avenirBold = "Avenir-Heavy"
    public static let avenirMedium = "Avenir-Medium"
    public static let avenirLight = "Avenir-Light"
    
    public static let georgia = "Georgia-Bold"
    public static let georgiaItalic = "Georgia-BoldItalic"
}

struct Storytell: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(appFont.avenirMedium, size: 24))
            .foregroundColor(appColor.darkBlue)
            .lineSpacing(10)
            .multilineTextAlignment(.center)
            .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 100))
    }
}

extension View {
    public func storyTell() -> some View {
        self.modifier(Storytell())
    }
}

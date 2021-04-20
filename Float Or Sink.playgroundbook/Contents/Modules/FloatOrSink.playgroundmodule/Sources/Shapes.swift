import SwiftUI

public struct Triangle: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.01148*width, y: 0.00096*height))
        path.addLine(to: CGPoint(x: 0.98659*width, y: 0.00096*height))
        path.addLine(to: CGPoint(x: 0.49903*width, y: 0.99206*height))
        path.addLine(to: CGPoint(x: 0.01148*width, y: 0.00096*height))
        path.closeSubpath()
        return path
    }
}

public struct Arrow: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.02577*width, y: 0.00874*height))
        path.addCurve(to: CGPoint(x: 0.00014*width, y: 0.01824*height), control1: CGPoint(x: 0.01007*width, y: 0.00921*height), control2: CGPoint(x: -0.00141*width, y: 0.01346*height))
        path.addLine(to: CGPoint(x: 0.02531*width, y: 0.09613*height))
        path.addCurve(to: CGPoint(x: 0.05654*width, y: 0.10393*height), control1: CGPoint(x: 0.02685*width, y: 0.10091*height), control2: CGPoint(x: 0.04084*width, y: 0.1044*height))
        path.addCurve(to: CGPoint(x: 0.08218*width, y: 0.09443*height), control1: CGPoint(x: 0.07224*width, y: 0.10346*height), control2: CGPoint(x: 0.08372*width, y: 0.0992*height))
        path.addLine(to: CGPoint(x: 0.0598*width, y: 0.02519*height))
        path.addLine(to: CGPoint(x: 0.28728*width, y: 0.01838*height))
        path.addCurve(to: CGPoint(x: 0.31291*width, y: 0.00888*height), control1: CGPoint(x: 0.30298*width, y: 0.01791*height), control2: CGPoint(x: 0.31446*width, y: 0.01366*height))
        path.addCurve(to: CGPoint(x: 0.28168*width, y: 0.00108*height), control1: CGPoint(x: 0.31137*width, y: 0.0041*height), control2: CGPoint(x: 0.29739*width, y: 0.00061*height))
        path.addLine(to: CGPoint(x: 0.02577*width, y: 0.00874*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.85655*width, y: 0.99743*height))
        path.addCurve(to: CGPoint(x: 0.92788*width, y: 0.42962*height), control1: CGPoint(x: 1.0069*width, y: 0.77733*height), control2: CGPoint(x: 1.04702*width, y: 0.59115*height))
        path.addCurve(to: CGPoint(x: 0.0467*width, y: 0.01067*height), control1: CGPoint(x: 0.8085*width, y: 0.26778*height), control2: CGPoint(x: 0.52975*width, y: 0.13135*height))
        path.addLine(to: CGPoint(x: 0.01044*width, y: 0.02411*height))
        path.addCurve(to: CGPoint(x: 0.87212*width, y: 0.43343*height), control1: CGPoint(x: 0.48454*width, y: 0.14256*height), control2: CGPoint(x: 0.75578*width, y: 0.2757*height))
        path.addCurve(to: CGPoint(x: 0.8006*width, y: 0.99388*height), control1: CGPoint(x: 0.98869*width, y: 0.59146*height), control2: CGPoint(x: 0.95024*width, y: 0.77484*height))
        path.addLine(to: CGPoint(x: 0.85655*width, y: 0.99743*height))
        path.closeSubpath()
        return path
    }
}

struct CurverArrow: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.952*width, y: 0.42459*height))
        path.addCurve(to: CGPoint(x: 0.94564*width, y: 0.42845*height), control1: CGPoint(x: 0.95136*width, y: 0.42734*height), control2: CGPoint(x: 0.94851*width, y: 0.42907*height))
        path.addLine(to: CGPoint(x: 0.89894*width, y: 0.41836*height))
        path.addCurve(to: CGPoint(x: 0.89492*width, y: 0.41227*height), control1: CGPoint(x: 0.89607*width, y: 0.41775*height), control2: CGPoint(x: 0.89427*width, y: 0.41502*height))
        path.addCurve(to: CGPoint(x: 0.90128*width, y: 0.40841*height), control1: CGPoint(x: 0.89556*width, y: 0.40952*height), control2: CGPoint(x: 0.89841*width, y: 0.40779*height))
        path.addLine(to: CGPoint(x: 0.94279*width, y: 0.41737*height))
        path.addLine(to: CGPoint(x: 0.95213*width, y: 0.37755*height))
        path.addCurve(to: CGPoint(x: 0.95849*width, y: 0.37369*height), control1: CGPoint(x: 0.95278*width, y: 0.3748*height), control2: CGPoint(x: 0.95562*width, y: 0.37308*height))
        path.addCurve(to: CGPoint(x: 0.96251*width, y: 0.37979*height), control1: CGPoint(x: 0.96136*width, y: 0.37431*height), control2: CGPoint(x: 0.96316*width, y: 0.37704*height))
        path.addLine(to: CGPoint(x: 0.952*width, y: 0.42459*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.09316*width, y: 0.70066*height))
        path.addCurve(to: CGPoint(x: 0.21811*width, y: 0.34061*height), control1: CGPoint(x: 0.11851*width, y: 0.55929*height), control2: CGPoint(x: 0.16173*width, y: 0.43657*height))
        path.addCurve(to: CGPoint(x: 0.42266*width, y: 0.14077*height), control1: CGPoint(x: 0.27446*width, y: 0.24469*height), control2: CGPoint(x: 0.34417*width, y: 0.17516*height))
        path.addCurve(to: CGPoint(x: 0.6783*width, y: 0.15171*height), control1: CGPoint(x: 0.50136*width, y: 0.10628*height), control2: CGPoint(x: 0.58835*width, y: 0.10736*height))
        path.addCurve(to: CGPoint(x: 0.95131*width, y: 0.42074*height), control1: CGPoint(x: 0.76805*width, y: 0.19597*height), control2: CGPoint(x: 0.8606*width, y: 0.2832*height))
        path.addLine(to: CGPoint(x: 0.94231*width, y: 0.4262*height))
        path.addCurve(to: CGPoint(x: 0.67344*width, y: 0.16079*height), control1: CGPoint(x: 0.85217*width, y: 0.28951*height), control2: CGPoint(x: 0.76088*width, y: 0.2039*height))
        path.addCurve(to: CGPoint(x: 0.42708*width, y: 0.15005*height), control1: CGPoint(x: 0.58619*width, y: 0.11777*height), control2: CGPoint(x: 0.50263*width, y: 0.11694*height))
        path.addCurve(to: CGPoint(x: 0.22737*width, y: 0.34562*height), control1: CGPoint(x: 0.35131*width, y: 0.18325*height), control2: CGPoint(x: 0.28305*width, y: 0.25085*height))
        path.addCurve(to: CGPoint(x: 0.10365*width, y: 0.70239*height), control1: CGPoint(x: 0.17172*width, y: 0.44034*height), control2: CGPoint(x: 0.12884*width, y: 0.56189*height))
        path.addLine(to: CGPoint(x: 0.09316*width, y: 0.70066*height))
        path.closeSubpath()
        return path
    }
}

public struct WaterShape: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.13133*width, y: 0.04411*height))
        path.addCurve(to: CGPoint(x: -0.02744*width, y: 0.04411*height), control1: CGPoint(x: 0.05926*width, y: -0.00271*height), control2: CGPoint(x: 0.02777*width, y: 0.01253*height))
        path.addLine(to: CGPoint(x: -0.02744*width, y: 1.11062*height))
        path.addLine(to: CGPoint(x: 1.01755*width, y: 1.11062*height))
        path.addLine(to: CGPoint(x: 1.01755*width, y: 0.04411*height))
        path.addCurve(to: CGPoint(x: 0.93947*width, y: 0.04411*height), control1: CGPoint(x: 0.98706*width, y: 0.06232*height), control2: CGPoint(x: 0.96996*width, y: 0.0606*height))
        path.addCurve(to: CGPoint(x: 0.81194*width, y: 0.04411*height), control1: CGPoint(x: 0.87792*width, y: 0.00043*height), control2: CGPoint(x: 0.85303*width, y: 0.01172*height))
        path.addCurve(to: CGPoint(x: 0.6805*width, y: 0.04411*height), control1: CGPoint(x: 0.75437*width, y: 0.0832*height), control2: CGPoint(x: 0.72624*width, y: 0.07906*height))
        path.addCurve(to: CGPoint(x: 0.54906*width, y: 0.04411*height), control1: CGPoint(x: 0.63499*width, y: 0.00814*height), control2: CGPoint(x: 0.60633*width, y: 0.00719*height))
        path.addCurve(to: CGPoint(x: 0.3968*width, y: 0.04411*height), control1: CGPoint(x: 0.48725*width, y: 0.08821*height), control2: CGPoint(x: 0.45452*width, y: 0.07683*height))
        path.addCurve(to: CGPoint(x: 0.25626*width, y: 0.04411*height), control1: CGPoint(x: 0.34721*width, y: -0.00194*height), control2: CGPoint(x: 0.31797*width, y: -0.01525*height))
        path.addCurve(to: CGPoint(x: 0.13133*width, y: 0.04411*height), control1: CGPoint(x: 0.21104*width, y: 0.08209*height), control2: CGPoint(x: 0.18457*width, y: 0.0915*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.13133*width, y: 0.04411*height))
        path.addCurve(to: CGPoint(x: -0.02744*width, y: 0.04411*height), control1: CGPoint(x: 0.05926*width, y: -0.00271*height), control2: CGPoint(x: 0.02777*width, y: 0.01253*height))
        path.addLine(to: CGPoint(x: -0.02744*width, y: 1.11062*height))
        path.addLine(to: CGPoint(x: 1.01755*width, y: 1.11062*height))
        path.addLine(to: CGPoint(x: 1.01755*width, y: 0.04411*height))
        path.addCurve(to: CGPoint(x: 0.93947*width, y: 0.04411*height), control1: CGPoint(x: 0.98706*width, y: 0.06232*height), control2: CGPoint(x: 0.96996*width, y: 0.0606*height))
        path.addCurve(to: CGPoint(x: 0.81194*width, y: 0.04411*height), control1: CGPoint(x: 0.87792*width, y: 0.00043*height), control2: CGPoint(x: 0.85303*width, y: 0.01172*height))
        path.addCurve(to: CGPoint(x: 0.6805*width, y: 0.04411*height), control1: CGPoint(x: 0.75437*width, y: 0.0832*height), control2: CGPoint(x: 0.72624*width, y: 0.07906*height))
        path.addCurve(to: CGPoint(x: 0.54906*width, y: 0.04411*height), control1: CGPoint(x: 0.63499*width, y: 0.00814*height), control2: CGPoint(x: 0.60633*width, y: 0.00719*height))
        path.addCurve(to: CGPoint(x: 0.3968*width, y: 0.04411*height), control1: CGPoint(x: 0.48725*width, y: 0.08821*height), control2: CGPoint(x: 0.45452*width, y: 0.07683*height))
        path.addCurve(to: CGPoint(x: 0.25626*width, y: 0.04411*height), control1: CGPoint(x: 0.34721*width, y: -0.00194*height), control2: CGPoint(x: 0.31797*width, y: -0.01525*height))
        path.addCurve(to: CGPoint(x: 0.13133*width, y: 0.04411*height), control1: CGPoint(x: 0.21104*width, y: 0.08209*height), control2: CGPoint(x: 0.18457*width, y: 0.0915*height))
        path.closeSubpath()
        return path
    }
}

public struct DynamometerDisplay: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.60894*width, y: 0))
        path.addLine(to: CGPoint(x: 0.38932*width, y: 0))
        path.addLine(to: CGPoint(x: 0.35478*width, y: 0.04659*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.44328*height), control1: CGPoint(x: 0.1495*width, y: 0.09798*height), control2: CGPoint(x: 0, y: 0.25614*height))
        path.addCurve(to: CGPoint(x: 0.4246*width, y: 0.85297*height), control1: CGPoint(x: 0, y: 0.65105*height), control2: CGPoint(x: 0.18429*width, y: 0.82311*height))
        path.addLine(to: CGPoint(x: 0.4246*width, y: 0.89351*height))
        path.addLine(to: CGPoint(x: 0.31087*width, y: 0.89351*height))
        path.addLine(to: CGPoint(x: 0.22407*width, y: 0.99187*height))
        path.addLine(to: CGPoint(x: 0.77179*width, y: 0.99187*height))
        path.addLine(to: CGPoint(x: 0.682*width, y: 0.89351*height))
        path.addLine(to: CGPoint(x: 0.56527*width, y: 0.89351*height))
        path.addLine(to: CGPoint(x: 0.56527*width, y: 0.85395*height))
        path.addCurve(to: CGPoint(x: 0.99826*width, y: 0.44328*height), control1: CGPoint(x: 0.80967*width, y: 0.82709*height), control2: CGPoint(x: 0.99826*width, y: 0.65347*height))
        path.addCurve(to: CGPoint(x: 0.65488*width, y: 0.04957*height), control1: CGPoint(x: 0.99826*width, y: 0.25962*height), control2: CGPoint(x: 0.85427*width, y: 0.10387*height))
        path.addLine(to: CGPoint(x: 0.60894*width, y: 0))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49913*width, y: 0.80756*height))
        path.addCurve(to: CGPoint(x: 0.93802*width, y: 0.44328*height), control1: CGPoint(x: 0.74152*width, y: 0.80756*height), control2: CGPoint(x: 0.93802*width, y: 0.64446*height))
        path.addCurve(to: CGPoint(x: 0.49913*width, y: 0.079*height), control1: CGPoint(x: 0.93802*width, y: 0.24209*height), control2: CGPoint(x: 0.74152*width, y: 0.079*height))
        path.addCurve(to: CGPoint(x: 0.06024*width, y: 0.44328*height), control1: CGPoint(x: 0.25674*width, y: 0.079*height), control2: CGPoint(x: 0.06024*width, y: 0.24209*height))
        path.addCurve(to: CGPoint(x: 0.49913*width, y: 0.80756*height), control1: CGPoint(x: 0.06024*width, y: 0.64446*height), control2: CGPoint(x: 0.25674*width, y: 0.80756*height))
        path.closeSubpath()
        return path
    }
}

public struct BeckerGlass: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.03254*width, y: 0.00171*height))
        path.addCurve(to: CGPoint(x: 0.00162*width, y: 0.02755*height), control1: CGPoint(x: 0.01546*width, y: 0.00171*height), control2: CGPoint(x: 0.00162*width, y: 0.01328*height))
        path.addCurve(to: CGPoint(x: 0.02735*width, y: 0.05356*height), control1: CGPoint(x: 0.00162*width, y: 0.04006*height), control2: CGPoint(x: 0.01323*width, y: 0.05117*height))
        path.addCurve(to: CGPoint(x: 0.03067*width, y: 0.05567*height), control1: CGPoint(x: 0.02849*width, y: 0.05383*height), control2: CGPoint(x: 0.02972*width, y: 0.05443*height))
        path.addCurve(to: CGPoint(x: 0.03192*width, y: 0.05892*height), control1: CGPoint(x: 0.03108*width, y: 0.05629*height), control2: CGPoint(x: 0.0314*width, y: 0.05705*height))
        path.addCurve(to: CGPoint(x: 0.03373*width, y: 0.06763*height), control1: CGPoint(x: 0.03268*width, y: 0.06142*height), control2: CGPoint(x: 0.03328*width, y: 0.06448*height))
        path.addCurve(to: CGPoint(x: 0.03459*width, y: 0.07587*height), control1: CGPoint(x: 0.03417*width, y: 0.07073*height), control2: CGPoint(x: 0.03444*width, y: 0.07368*height))
        path.addLine(to: CGPoint(x: 0.03478*width, y: 0.07918*height))
        path.addLine(to: CGPoint(x: 0.03478*width, y: 0.93795*height))
        path.addCurve(to: CGPoint(x: 0.10833*width, y: 0.99941*height), control1: CGPoint(x: 0.03478*width, y: 0.9719*height), control2: CGPoint(x: 0.06771*width, y: 0.99941*height))
        path.addLine(to: CGPoint(x: 0.81177*width, y: 0.99941*height))
        path.addCurve(to: CGPoint(x: 0.88532*width, y: 0.93795*height), control1: CGPoint(x: 0.85239*width, y: 0.99941*height), control2: CGPoint(x: 0.88532*width, y: 0.9719*height))
        path.addLine(to: CGPoint(x: 0.88532*width, y: 0.12607*height))
        path.addCurve(to: CGPoint(x: 0.91406*width, y: 0.09893*height), control1: CGPoint(x: 0.89247*width, y: 0.11289*height), control2: CGPoint(x: 0.90175*width, y: 0.10447*height))
        path.addCurve(to: CGPoint(x: 0.97218*width, y: 0.08924*height), control1: CGPoint(x: 0.92752*width, y: 0.09289*height), control2: CGPoint(x: 0.94596*width, y: 0.08967*height))
        path.addCurve(to: CGPoint(x: 0.9954*width, y: 0.07488*height), control1: CGPoint(x: 0.98399*width, y: 0.08904*height), control2: CGPoint(x: 0.99245*width, y: 0.08239*height))
        path.addCurve(to: CGPoint(x: 0.98526*width, y: 0.05169*height), control1: CGPoint(x: 0.99842*width, y: 0.0672*height), control2: CGPoint(x: 0.9961*width, y: 0.05718*height))
        path.addLine(to: CGPoint(x: 0.89232*width, y: 0.00465*height))
        path.addCurve(to: CGPoint(x: 0.88532*width, y: 0.00171*height), control1: CGPoint(x: 0.89008*width, y: 0.00352*height), control2: CGPoint(x: 0.8873*width, y: 0.00171*height))
        path.addLine(to: CGPoint(x: 0.03254*width, y: 0.00171*height))
        path.closeSubpath()
        return path
    }
}

public struct BeckerWater: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.9477*height))
        path.addCurve(to: CGPoint(x: 0.07205*width, y: height), control1: CGPoint(x: 0, y: 0.97658*height), control2: CGPoint(x: 0.03226*width, y: height))
        path.addLine(to: CGPoint(x: 0.92796*width, y: height))
        path.addCurve(to: CGPoint(x: width, y: 0.9477*height), control1: CGPoint(x: 0.96774*width, y: height), control2: CGPoint(x: width, y: 0.97658*height))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.closeSubpath()
        return path
    }
}

public struct BeckerReflex: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.93023*height))
        path.addCurve(to: CGPoint(x: width, y: height), control1: CGPoint(x: 0, y: 0.96876*height), control2: CGPoint(x: 0.44772*width, y: height))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.closeSubpath()
        return path
    }
}

public struct BalanceRecipient: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99381*width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addCurve(to: CGPoint(x: 0.13915*width, y: height), control1: CGPoint(x: 0, y: 0.38838*height), control2: CGPoint(x: 0.05299*width, y: 0.74087*height))
        path.addLine(to: CGPoint(x: 0.85466*width, y: height))
        path.addCurve(to: CGPoint(x: 0.99381*width, y: 0), control1: CGPoint(x: 0.94082*width, y: 0.74087*height), control2: CGPoint(x: 0.99381*width, y: 0.38838*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.78379*width, y: 0.80171*height))
        path.addCurve(to: CGPoint(x: 0.88505*width, y: 0.24918*height), control1: CGPoint(x: 0.84264*width, y: 0.64173*height), control2: CGPoint(x: 0.86946*width, y: 0.53419*height))
        return path
    }
}

public struct BalanceBody: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.97938*width, y: 0.96019*height))
        path.addLine(to: CGPoint(x: 0.01793*width, y: 0.96019*height))
        path.addLine(to: CGPoint(x: 0.11921*width, y: 0.18392*height))
        path.addLine(to: CGPoint(x: 0.18755*width, y: 0.18392*height))
        path.addLine(to: CGPoint(x: 0.19988*width, y: 0.18392*height))
        path.addLine(to: CGPoint(x: 0.19988*width, y: 0.1482*height))
        path.addLine(to: CGPoint(x: 0.19988*width, y: 0.04064*height))
        path.addLine(to: CGPoint(x: 0.79735*width, y: 0.04064*height))
        path.addLine(to: CGPoint(x: 0.79735*width, y: 0.1482*height))
        path.addLine(to: CGPoint(x: 0.79735*width, y: 0.18392*height))
        path.addLine(to: CGPoint(x: 0.80967*width, y: 0.18392*height))
        path.addLine(to: CGPoint(x: 0.87957*width, y: 0.18392*height))
        path.addLine(to: CGPoint(x: 0.97938*width, y: 0.96019*height))
        path.closeSubpath()
        return path
    }
}

public struct BalanceVisor: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.06937*width, y: 0))
        path.addLine(to: CGPoint(x: 0.91518*width, y: 0))
        path.addLine(to: CGPoint(x: 0.9942*width, y: 0.98806*height))
        path.addLine(to: CGPoint(x: 0, y: 0.98806*height))
        path.addLine(to: CGPoint(x: 0.06937*width, y: 0))
        path.closeSubpath()
        return path
    }
}


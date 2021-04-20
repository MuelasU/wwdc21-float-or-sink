import Foundation

var ballMass: Float = 80 //g
var ballDiameter: Float = 5 //cm
var ballVolume: Float { Float.pi / 6 * powf(ballDiameter, 3) }

public enum Motion : Int {
    case Sink = 7
    case Rest = 8
    case Float = 9
    
    public var description: String {
        switch self {
        case .Sink:
            return "Sink" 
        case .Float:
            return "Float"
        case .Rest:
            return "Rest"
        }
    }
    
    public var ballVsWaterWeightSignal: String {
        switch self {
        case .Sink:
            return ">" 
        case .Float:
            return "<"
        case .Rest:
            return "="
        }
    }
}

import SwiftUI

public struct SliderControlRow : View {
    private let label: String
    private let unit: String
    private let range: ClosedRange<Float>;
    @Binding private var value: Float
    
    public init(label: String, value: Binding<Float>, unit: String, range: ClosedRange<Float>) {
        self.label = label
        self._value = value
        self.unit = unit
        self.range = range
    }
    
    public var body: some View {
        HStack(spacing: 20) {
            Text(label)
                .font(.custom(appFont.avenir, size: 24))
                .frame(width: 120, alignment: .leading)
            
            Slider(value: _value, in: range)
            
            Text(String(format: "%.0f", value) + unit)
                .font(.custom(appFont.avenir, size: 18))
                .frame(width: 50)
        }
    }
}


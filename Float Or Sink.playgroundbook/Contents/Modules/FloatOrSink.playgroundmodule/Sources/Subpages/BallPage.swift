import SwiftUI

public struct BallPage : View {
    private let story = "Here is our solid ball\nIn this playground we will analyse its behaviour in water\nIt will Float or Sink ?"
    
    public init() {}
    
    public var body: some View {
        VStack() {
            Text(story)
                .storyTell()
            
            Spacer()
            
            Ball(diameter: 12)
            
            Spacer()
        }
        .padding(.top, 80)
    }
}

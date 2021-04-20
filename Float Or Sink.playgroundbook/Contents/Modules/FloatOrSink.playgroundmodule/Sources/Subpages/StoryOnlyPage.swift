import SwiftUI

public struct StoryOnlyPage : View {
    private let story: String
    
    public init(story: String) {
        self.story = story
    }
    
    public var body: some View {
        VStack {
            Spacer()
            
            Text(story)
                .storyTell()
            
            Spacer()
        }
        .padding(.top, 80)
    }
}


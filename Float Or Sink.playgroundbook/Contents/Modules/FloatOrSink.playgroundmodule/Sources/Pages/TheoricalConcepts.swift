import SwiftUI
import PlaygroundSupport

public struct TheoricalConcepts : View {
    @State private var buttonIsEnabled: Bool = true
    @State private var renderizedPage = 0
    
    public init() {}
    
    public var body: some View {
        if renderizedPage == 0 {
            StartPage(action: next)
        } else if renderizedPage == 10 {
            EndPage(action: nextPage)
        } else {
            VStack {
                switch renderizedPage {
                case 1:
                    BallPage()
                case 2:
                    RealWeightPage(ballIsInRegion: $buttonIsEnabled)
                case 3:
                    ApparentWeightPage(conjunctIsInRegion: $buttonIsEnabled)
                case 4:
                    StoryOnlyPage(story: "Hmm...\nNow the ball appears to be lighter!\nWhy did it happens ?")
                case 5:
                    DisplacedWaterPage(recipientIsInRegion: $buttonIsEnabled)
                case 6:
                    ForcesPage()
                case 7, 8, 9:
                    MotionCasesPage(motionCase: renderizedPage)
                default:
                    EmptyView()
                }
                
                NextButton(action: next, isEnabled: buttonIsEnabled)
            }
        }
    }
    
    private func enableButton()  {
        buttonIsEnabled = true
    }
    
    private func disableButton() {
        buttonIsEnabled = false
    }
    
    private func next() {
        renderizedPage += 1
        switch renderizedPage {
        case 2, 3, 5:
            disableButton()
        default:
            enableButton()
        }
    }
    
    private func nextPage() {
        PlaygroundPage.current.navigateTo(page: .next)
    }
}

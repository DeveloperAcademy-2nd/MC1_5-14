import SwiftUI

struct ContentView: View {
    
    
    @State private var isHiding = true
    @EnvironmentObject var sheetManager: SheetManager
    
    
    var body: some View {
        ZStack{
            Scene00_Intro()
            VStack{
                Button(action: {
                    withAnimation {
                        isHiding.toggle()
                    }
                }, label: {
                    Text("리빈나와라")
                })
            }
            PopupView(isHiding: $isHiding, config: .init(content: "리빈2",background:"book"), didClose: {})
                .isHidden(isHiding)
                .transition(AnyTransition.scale.animation(.default))
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SheetManager())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}

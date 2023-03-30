import SwiftUI
import Foundation

struct ContentView: View {
    @State var isPopupPresented = false
    @State var isSubPopupPresented = false
    @EnvironmentObject var data: Data
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // 기본 뷰
                Scene00_Intro()
                if (data.showingBook) {
                    ZStack{
                        Color.blue.opacity(0)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                withAnimation(.linear(duration: 0.3)){
                                    isPopupPresented = true
                                }
                            }
                        //배경(서서히 등장하는 애니메이션)
                        if isPopupPresented{
                            Color.init(hex: 0x2F2727, alpha: 0.55)
                                .ignoresSafeArea()
                        }
                        
                        Popup(isPresented: $isPopupPresented,
                              hasSubPupup: true,
                              isFirstPopup: true) {
                            ZStack {
                                Image("book")
                                    .resizable()
                                    .frame(width: geometry.size.width * 0.7,
                                           height:geometry.size.height * 0.7)
                                    .offset(y:30)
                                    .aspectRatio(1, contentMode: .fit)
                                    .onAppear{
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                            isSubPopupPresented = true
                                        }
                                    }
                                
                                Popup(isPresented: $isSubPopupPresented,
                                      isLastPopup: true,
                                      firstParent:$isPopupPresented
                                ) {
                                    if (data.presentEpisode == 1) {
                                        AnimatedImagesView(picture: "picture01", dialogs: ["dialog01", "dialog02", "dialog03"], positions: [[-40,42],[15,30]]
                                        )
                                    } else if (data.presentEpisode == 2) {
                                        AnimatedImagesView(picture: "picture02", dialogs: ["dialog10", "dialog11", "dialog12"], positions: [[-40,42],[15,30]]
                                        )
                                    } else if (data.presentEpisode == 3) {
                                        AnimatedImagesView(picture: "picture03", dialogs: ["dialog20", "dialog21"], positions: [[-40,42],[15,30]]
                                        )
                                    } else if (data.presentEpisode == 4) {
                                        AnimatedImagesView(picture: "picture04", dialogs: ["dialog30", "dialog31"], positions: [[-40,42],[15,30]]
                                        )
                                    } else if (data.presentEpisode == 5) {
                                        AnimatedImagesView(picture: "picture05", dialogs: ["dialog40"], positions: [[-40,42],[15,30]]
                                        )
                                    }
                                }
                                .edgesIgnoringSafeArea(.all)
                            }
                        }
                              .transition(.move(edge: .bottom))
                              .animation(.easeOut(duration: 0.5))
                              .edgesIgnoringSafeArea(.all)
                    }
                }
            }
        }
        
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

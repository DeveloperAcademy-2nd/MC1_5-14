import SwiftUI
import Foundation

struct ContentView: View {
    @State var isPopupPresented = false
    @State var isSubPopupPresented = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // 기본 뷰
                Scene00_Intro()
                Button("Show Popup") {
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
                            .frame(width: geometry.size.width*0.75,
                                   height:geometry.size.height*0.75)
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
                            AnimatedImagesView()
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

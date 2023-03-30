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
                    Color.init(hex: 0x2F2727, opacity: 0.55)
                        .ignoresSafeArea()
                        .overlay(
                            Text("Hello, World!")
                                .foregroundColor(.white)
                        )
                }
                
                Popup(isPresented: $isPopupPresented,
                      hasSubPupup: true,
                      isFirstPopup: true) {
                    ZStack {
                        
                        Image("book")
                            .resizable()
                            .frame(width: geometry.size.width*0.7,
                                   height:geometry.size.height*0.7)
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


extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex >> 16) & 0xff) / 255
        let green = Double((hex >> 8) & 0xff) / 255
        let blue = Double((hex >> 0) & 0xff) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

//
//  SwiftUIView.swift
//
//
//  Created by Jun on 2023/03/30.
//

import SwiftUI

struct AnimatedImagesView: View {
    let picture = Image("picture01")
    let dialogs = [
        Image("dialog01"),
        Image("dialog02"),
        Image("dialog03")
    ]
    @State private var currentIndex = 0
    
    var body: some View {
        
        HStack{
        
            picture
                .offset(x:-45,y:42)
                .opacity(1)
                .animation(.easeIn(duration: 0.5))
            VStack {
                ForEach(dialogs.indices) { index in
                    dialogs[index]
                        .offset(x: 15,
                                y: -10 + CGFloat(index * 10))
                        .opacity(currentIndex >= index ? 1 : 0)
                        .animation(.easeIn(duration: 0.5).delay(Double(index)*0.5+0.5))
                }
            }
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 1.0).repeatForever()) {
                currentIndex = dialogs.count - 1
            }
        }
    }
}

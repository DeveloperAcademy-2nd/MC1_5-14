//
//  SwiftUIView.swift
//
//
//  Created by Jun on 2023/03/30.
//

import SwiftUI

struct AnimatedImagesView: View {
    let picture: Image
    let dialogs: [Image]
    let positions: [[CGFloat]]
    
    @State private var currentIndex = 0
    
    init(picture: String, dialogs: [String], positions: [[CGFloat]]) {
        self.picture = Image(picture)
        self.dialogs = dialogs.map{Image($0)}
        self.positions = positions
    }
    var body: some View {
        HStack{
            picture
                .offset(x:positions[0][0],y:positions[0][1])
                .opacity(1)
                .animation(.easeOut(duration: 0.5).delay(0.5))
            VStack {
                ForEach(dialogs.indices) { index in
                    dialogs[index]
                        .offset(x: positions[1][0],
                                y: positions[1][1] + CGFloat(index * 5))
                        .opacity(currentIndex >= index ? 1 : 0)
                        .animation(.easeOut(duration: 0.5).delay(Double(index)*0.5+0.5))
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

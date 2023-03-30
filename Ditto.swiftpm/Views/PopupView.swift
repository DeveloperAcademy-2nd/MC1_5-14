//
//  SwiftUIView.swift
//  
//
//  Created by Jun on 2023/03/29.
//

import SwiftUI

struct PopupView: View {
    @Binding var isHiding: Bool
    let config: SheetManager.Config
    let didClose: () -> Void
    var body: some View {
        VStack(spacing: .zero) {
            content
            close
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 24)
        .padding(.vertical, 40)
        .multilineTextAlignment(.center)
        .background(background)
    }
}


private extension PopupView {
    
    var close: some View {
        Button {
            withAnimation {
                isHiding.toggle()
            }
            didClose()
        } label: {
            Image(systemName: "xmark")
                .symbolVariant(.circle.fill)
                .font(
                    .system(size: 35,
                            weight: .bold,
                            design: .rounded)
            )
            .padding(8)
        }
    }
    
    var background: some View {
        Image(config.background)
            .resizable()
            .frame(width: 800, height: 700)
            .scaledToFill()
    }
    
    var content: some View {
        Text(config.content)
            .font(.callout)
            .foregroundColor(.black.opacity(0.8))
    }
}

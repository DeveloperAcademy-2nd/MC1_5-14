//
//  PopupView.swift
//
//
//  Created by Jun on 2023/03/30.
//

import SwiftUI

struct Popup<Content: View>: View {
    
    @EnvironmentObject var data: Data
    let content: Content
    @Binding var isPresented: Bool
    let hasSubPupup: Bool
    let isFirstPopup: Bool
    let isLastPopup: Bool
    @Binding var firstParent: Bool
    
    init(isPresented: Binding<Bool>, hasSubPupup: Bool = false, isFirstPopup: Bool = false, isLastPopup: Bool = false, firstParent: Binding<Bool>, @ViewBuilder content: () -> Content) {
        self.content = content()
        self._isPresented = isPresented
        self.hasSubPupup = hasSubPupup
        self.isFirstPopup = isFirstPopup
        self.isLastPopup = isLastPopup
        self._firstParent = firstParent
    }
    
    init(isPresented: Binding<Bool>, hasSubPupup: Bool = false, isFirstPopup: Bool = false, isLastPopup: Bool = false, @ViewBuilder content: () -> Content) {
        
        self.content = content()
        self._isPresented = isPresented
        self.hasSubPupup = hasSubPupup
        self.isFirstPopup = isFirstPopup
        self.isLastPopup = isLastPopup
        self._firstParent = isPresented
    }

    var body: some View {
        if isPresented {
            ZStack {
                VStack {
                    Spacer()
                    HStack{
                        Spacer()
                        content
                        Spacer()
                    }
                    Spacer()
                }
                
                if isLastPopup {
                    
                    Color.blue.opacity(0)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation{
                                isPresented = false
                                firstParent = false
                            }
                            data.showingBook = false
                        }
                }
            }
            .animation(.default)
            .edgesIgnoringSafeArea(.all)
        }
    }
}


//
//  Scene01_ClubRoom_Intro.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct Scene01_ClubRoom_Intro: View {
  @State var transitionView: Bool = true
    var body: some View {
      // 터치 이벤트 -> transitionView.toggle()
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        ZStack {
          VStack {
            Spacer().frame(height: 14)
            makeOpacityView(hex: 0x322725, opacity: 0.85)
            Spacer().frame(height: 14)
          }
          HStack {
            Image("IntroNote")
              .frame(maxWidth: .infinity, alignment: .center)
            VStack {
              Spacer().frame(height: 65)
              Text("정보 설명")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .frame(maxWidth: .infinity, maxHeight: .infinity , alignment: .top)
            }
          }
        }
        .opacity(transitionView ? 1.0 : 0.0)
      }
    }
}

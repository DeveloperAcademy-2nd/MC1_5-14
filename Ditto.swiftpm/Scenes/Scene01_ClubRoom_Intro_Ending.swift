//
//  Scene01_ClubRoom_Intro_Ending.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct Scene01_ClubRoom_Intro_Ending: View {
  @Environment(\.endingState) var endingState: Bool
  @State var transitionView: Bool = false
  var body: some View {
    NavigationView {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
          .onTapGesture {
            transitionView = true
          }
        ZStack {
          VStack {
            Spacer().frame(height: 14)
            makeOpacityView(hex: 0x322725, opacity: 0.85)
            Spacer().frame(height: 14)
          }
          if endingState {
            NavigationLink(destination: Scene00_Intro()) {
              Text("엔딩 보러가기")
                .font(.system(size: 36))
                .padding(.horizontal, 21)
                .padding(.vertical, 14)
                .foregroundColor(.white)
                .background(Color.init(hex: 0x8E7C72))
                .cornerRadius(90)
            }
          } else {
            NavigationLink(destination: Scene01_ClubRoom_Main().navigationBarBackButtonHidden(true)) {
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
          }
        }
        .opacity(transitionView ? 1.0 : 0.0)
      }
    }
  }
}

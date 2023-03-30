//
//  Scene01_ClubRoom_Intro_Ending.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct Scene01_ClubRoom_Intro_Ending: View {
  @EnvironmentObject var data: Data
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
          if data.endingState {
            NavigationLink(destination: Scene00_Intro()) {
              Button(action: {
                transitionView = false
              }, label: {
                ZStack {
                  Text("                            ")
                    .font(.system(size: 36))
                    .padding(.horizontal, 21)
                    .padding(.vertical, 14)
                    .foregroundColor(.white)
                    .background(Color.init(hex: 0x8E7C72))
                    .cornerRadius(90)
                  Image("EndingText")
                    .resizable()
                    .frame(width: 179, height: 36)
                }
              })
            }
          } else {
            NavigationLink(destination: Scene01_ClubRoom_Main()
              .environmentObject(data)
              .navigationBarBackButtonHidden(true)) {
              HStack {
                Image("IntroNote")
                  .frame(maxWidth: .infinity, alignment: .center)
                VStack {
                  Spacer().frame(height: 65)
                  Image("IntroNoteText")
                    .resizable()
                    .frame(width: 271, height: 232)
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

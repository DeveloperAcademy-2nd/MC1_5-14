//
//  Scene01_ClubRoom_Main.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct Scene01_ClubRoom_Main: View { // 동그라미 순서: 2, 0, 1, 3
  @State var itemScreenVisiblities: [Bool] = [false, false, false, false]
  @EnvironmentObject var data: Data
  @State var screenNum: Int = 0
  var body: some View {
    NavigationView {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        HStack {
          VStack {
            Button(action: { // 0
              screenNum = 0
              itemScreenVisiblities[screenNum].toggle()
              data.buttondisabled[0] = -1
              data.buttondisabled[1] = 1
            }, label: {
              switch(data.buttondisabled[0]) {
              case 0:
                SelectingPointingView(pointingState: "nonGuiding")
              case 1:
                SelectingPointingView(pointingState: "guiding")
              case -1:
                SelectingPointingView(pointingState: "unabled")
              default:
                SelectingPointingView(pointingState: "nonGuiding")
              }
              })
            .frame(maxHeight: .infinity, alignment: .bottom)
            Spacer().frame(height: 240)
          }.frame(maxWidth: .infinity, alignment: .center)
          VStack {
            Button(action: { // 1
              screenNum = 1
              itemScreenVisiblities[screenNum].toggle()
              data.buttondisabled[1] = -1
              data.buttondisabled[3] = 1
            }, label: {
              switch(data.buttondisabled[1]) {
              case 0:
                SelectingPointingView(pointingState: "nonGuiding")
              case 1:
                SelectingPointingView(pointingState: "guiding")
              case -1:
                SelectingPointingView(pointingState: "unabled")
              default:
                SelectingPointingView(pointingState: "nonGuiding")
              }
            })
            .frame(maxHeight: .infinity, alignment: .bottom)
            Spacer().frame(height: 135)
          }.frame(maxWidth: .infinity, alignment: .center)
          HStack {
            VStack {
              Button(action: { // 2
                screenNum = 2
                itemScreenVisiblities[screenNum].toggle()
                data.buttondisabled[2] = -1
                data.buttondisabled[0] = 1
              }, label: {
                switch(data.buttondisabled[2]) {
                case 0:
                  SelectingPointingView(pointingState: "nonGuiding")
                case 1:
                  SelectingPointingView(pointingState: "guiding")
                case -1:
                  SelectingPointingView(pointingState: "unabled")
                default:
                  SelectingPointingView(pointingState: "nonGuiding")
                }
              })
              .frame(maxHeight: .infinity, alignment: .bottomLeading)
              Spacer().frame(height: 120)
            }
            Spacer().frame(width: 80)
            VStack {
              Button(action: { // 3
                screenNum = 3
                itemScreenVisiblities[screenNum].toggle()
                data.buttondisabled[3] = -1
                data.endingState = true
              }, label: {
                switch(data.buttondisabled[3]) {
                case 0:
                  SelectingPointingView(pointingState: "nonGuiding")
                case 1:
                  SelectingPointingView(pointingState: "guiding")
                case -1:
                  SelectingPointingView(pointingState: "unabled")
                default:
                  SelectingPointingView(pointingState: "nonGuiding")
                }
              })
              .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 265)
            }
          }.frame(maxWidth: .infinity, alignment: .center)
          VStack {
          }.frame(maxWidth: .infinity, alignment: .center)
        }
        makeItemView(itemNum: screenNum, width: 274, height: 197, data: data)
          .opacity(itemScreenVisiblities[screenNum] ? 1 : 0)
          .environmentObject(data)
      }
    }
  }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
      Scene01_ClubRoom_Main()
    }
}

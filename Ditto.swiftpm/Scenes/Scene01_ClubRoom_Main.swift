//
//  Scene01_ClubRoom_Main.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct Scene01_ClubRoom_Main: View {
  @State var itemScreenVisiblities: [Bool] = [false, false, false, false]
  @State var episodeStage: [Int] = [2, 0, 1, 3] // 순서대로 누를 동그라미들
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
            Button(action: {
              screenNum = 0
              itemScreenVisiblities[screenNum].toggle()
              data.buttondisabled[0].toggle()
            }, label: { SelectingPointingView() })
            .disabled(data.buttondisabled[0])
            .frame(maxHeight: .infinity, alignment: .bottom)
            Spacer().frame(height: 240)
          }.frame(maxWidth: .infinity, alignment: .center)
          VStack {
            Button(action: {
              screenNum = 1
              itemScreenVisiblities[screenNum].toggle()
              data.buttondisabled[1].toggle()
            }, label: { SelectingPointingView() })
            .disabled(data.buttondisabled[0])
            .frame(maxHeight: .infinity, alignment: .bottom)
            Spacer().frame(height: 135)
          }.frame(maxWidth: .infinity, alignment: .center)
          HStack {
            VStack {
              Button(action: {
                screenNum = 2
                itemScreenVisiblities[screenNum].toggle()
                data.buttondisabled[2].toggle()
              }, label: { SelectingPointingView() })
              .disabled(data.buttondisabled[0])
              .frame(maxHeight: .infinity, alignment: .bottomLeading)
              Spacer().frame(height: 120)
            }
            Spacer().frame(width: 80)
            VStack {
              Button(action: {
                screenNum = 3
                itemScreenVisiblities[screenNum].toggle()
                data.buttondisabled[3].toggle()
                data.endingState = true
              }, label: {
                SelectingPointingView()
              })
              .disabled(data.buttondisabled[0])
              .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 265)
            }
          }.frame(maxWidth: .infinity, alignment: .center)
          VStack {
          }.frame(maxWidth: .infinity, alignment: .center)
        }
        makeItemView(itemNum: screenNum, width: 274, height: 197)
          .opacity(itemScreenVisiblities[screenNum] ? 1 : 0)
      }
    }
  }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
      Scene01_ClubRoom_Main()
    }
}

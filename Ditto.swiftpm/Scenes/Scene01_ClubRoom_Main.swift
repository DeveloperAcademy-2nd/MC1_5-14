//
//  Scene01_ClubRoom_Main.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct Scene01_ClubRoom_Main: View {
  @Environment(\.endingState) var endingState: Bool
  @State var itemScreenVisiblities: [Bool] = [false, false, false, false]
  @State var screenNum: Int = 0
    var body: some View {
      NavigationView {
        ZStack {
          Image("ClubRoom")
            .resizable()
            .edgesIgnoringSafeArea(.all)
          HStack {
            VStack {
                SelectingPointingView()
                  .frame(maxHeight: .infinity, alignment: .bottom)
                  .onTapGesture {
                    screenNum = 0
                    itemScreenVisiblities[screenNum].toggle()
                  }
              Spacer().frame(height: 240)
            }.frame(maxWidth: .infinity, alignment: .center)
            VStack {
                SelectingPointingView()
                  .frame(maxHeight: .infinity, alignment: .bottom)
                  .onTapGesture {
                    screenNum = 1
                    itemScreenVisiblities[screenNum].toggle()
                  }
              Spacer().frame(height: 135)
            }.frame(maxWidth: .infinity, alignment: .center)
            HStack {
              VStack {
                  SelectingPointingView()
                    .frame(maxHeight: .infinity, alignment: .bottomLeading)
                    .onTapGesture {
                      screenNum = 2
                      itemScreenVisiblities[screenNum].toggle()
                    }
                Spacer().frame(height: 120)
              }
              Spacer().frame(width: 80)
              VStack {
                  SelectingPointingView()
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .onTapGesture {
                      screenNum = 3
                      itemScreenVisiblities[screenNum].toggle()
                    }
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

//
//  Scene01_ClubRoom_Main.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct Scene01_ClubRoom_Main: View {
    var body: some View {
      NavigationView {
        ZStack {
          Image("ClubRoom")
            .resizable()
            .edgesIgnoringSafeArea(.all)
          HStack {
            VStack {
              NavigationLink(destination: makeItemView(item: "AppleFourCut", width: 274, height: 197)
              ) {
                SelectingPointingView()
                  .frame(maxHeight: .infinity, alignment: .bottom)
              }
              Spacer().frame(height: 240)
            }.frame(maxWidth: .infinity, alignment: .center)
            VStack {
              NavigationLink(destination: { NavigationLink(destination: makeEpisodeView(epNum: 1, title: "Once apon a time")){
                makeItemView(item: "AppleFourCut", width: 274, height: 197) }
              }
              ) {
                SelectingPointingView()
                  .frame(maxHeight: .infinity, alignment: .bottom)
              }
              Spacer().frame(height: 135)
            }.frame(maxWidth: .infinity, alignment: .center)
            HStack {
              VStack {
                NavigationLink(destination: makeItemView(item: "AppleFourCut", width: 274, height: 197)
                ) {
                  SelectingPointingView()
                    .frame(maxHeight: .infinity, alignment: .bottomLeading)
                }
                Spacer().frame(height: 120)
              }
              Spacer().frame(width: 80)
              VStack {
                NavigationLink(destination: makeItemView(item: "AppleFourCut", width: 274, height: 197)
                ) {
                  SelectingPointingView()
                    .frame(maxHeight: .infinity, alignment: .bottom)
                }
                Spacer().frame(height: 265)
              }
            }.frame(maxWidth: .infinity, alignment: .center)
            VStack {
            }.frame(maxWidth: .infinity, alignment: .center)
          }
        }
      }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
      Scene01_ClubRoom_Main()
    }
}

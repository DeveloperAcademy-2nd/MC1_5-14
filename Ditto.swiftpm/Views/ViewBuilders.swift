//
//  ViewBuilders.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

@ViewBuilder
func makeOpacityView(hex: UInt, opacity: Double) -> some View {
  ZStack {
    Color.init(hex: hex, alpha: opacity)
  }
}

@ViewBuilder
func makeItemView(itemNum: Int, width: CGFloat, height: CGFloat, data: Data ) -> some View {
  let items = ["AppleFourCut","AppleFourCut","AppleFourCut","AppleFourCut"]
  NavigationView {
    NavigationLink(destination: makeEpisodeView(epNum: itemNum, data: data)) {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        VStack {
          Spacer().frame(height: 141)
          makeOpacityView(hex: 0x433A3A, opacity: 0.85)
        }
        VStack {
          Spacer().frame(height: 30)
          Image(items[itemNum])
            .resizable()
            .frame(width: width, height: height)
            .frame(maxHeight: .infinity, alignment: .top)
        }
      }.navigationBarBackButtonHidden(false)
    }
  }
}

@ViewBuilder
func makeEpisodeView(epNum: Int, data: Data) -> some View {
  let titles = ["마스크", "포스트잇", "애플네컷", "야호"]
  NavigationView() {
    NavigationLink(destination: Scene01_ClubRoom_Main()) {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        makeOpacityView(hex: 0x636363, opacity: 0.5)
        VStack {
          Text("ep." + String(epNum + 1))
            .font(.system(size: 30))
          Text(titles[epNum])
            .font(.system(size: 70))
        }
      }.navigationBarBackButtonHidden(true)
    }
  }
}

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
  let items = ["Item_PostIt","Item_Dotjari","Item_Mask","Item_AppleFourCut"]
  let images = ["수많은 포스트잇 더미", "돗자리", "마스크", "애플네컷"]
  let epImages = ["부제2", "부제3", "부제1", "부제4"]
  var isVisible: Bool = false
  NavigationView {
    //    NavigationLink(destination: makeEpisodeView(epNum: itemNum, data: data).navigationBarBackButtonHidden(true)) {
    ZStack {
      //        Image("ClubRoom")
      Image(images[itemNum])
        .resizable()
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
          isVisible.toggle()
        }
      NavigationLink(destination: {
        switch(itemNum) {
        case 1:
          Scene04_SkyView().navigationBarBackButtonHidden(true)
        case 2:
          Scene02_Hallway().navigationBarBackButtonHidden(true)
        case 3:
          Scene05_NightOcean().navigationBarBackButtonHidden(true)
            .environmentObject(data)
        default: // 0
          Scene03_ClassRoom().navigationBarBackButtonHidden(true)
        }}) {
          Image(epImages[itemNum])
            .resizable()
            .ignoresSafeArea(.all)
            .opacity(isVisible ? 1 : 0)
          //        VStack {
          //          Spacer().frame(height: 141)
          //          makeOpacityView(hex: 0x433A3A, opacity: 0.85)
          //        }
          //        VStack {
          //          Spacer().frame(height: 30)
          //          Image(items[itemNum])
          //            .resizable()
          //            .frame(width: 365, height: 280)
          //            .frame(maxHeight: .infinity, alignment: .top)
          //        }
        }
    }
    //  }.navigationBarBackButtonHidden(true)
  }
}

@ViewBuilder
func makeEpisodeView(epNum: Int, data: Data) -> some View {
  let titles = [Image("Title_Episode2").resizable().frame(width: 253, height: 138), Image("Title_Episode3").resizable().frame(width: 371, height: 138), Image("Title_Episode1").resizable().frame(width: 405, height: 126), Image("Title_Episode4").resizable().frame(width: 270, height: 138)]
  NavigationView() {
    NavigationLink(destination: { switch(epNum) {
    case 1:
      Scene04_SkyView().navigationBarBackButtonHidden(true)
    case 2:
      Scene02_Hallway().navigationBarBackButtonHidden(true)
    case 3:
      Scene05_NightOcean().navigationBarBackButtonHidden(true)
        .environmentObject(data)
    default: // 0
      Scene03_ClassRoom().navigationBarBackButtonHidden(true)
    }
    }) {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        makeOpacityView(hex: 0x636363, opacity: 0.5)
        VStack {
          titles[epNum]
        }
      }.navigationBarBackButtonHidden(true)
    }
  }
}

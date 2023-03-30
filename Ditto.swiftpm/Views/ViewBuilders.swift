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
func makeItemView(item: String, width: CGFloat, height: CGFloat) -> some View {
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
      Image(item)
        .resizable()
        .frame(width: width, height: height)
        .frame(maxHeight: .infinity, alignment: .top)
    }
  }
}

@ViewBuilder
func makeEpisodeView(title: String) -> some View {
  ZStack {
    Image("ClubRoom")
      .resizable()
      .edgesIgnoringSafeArea(.all)
    makeOpacityView(hex: 0x636363, opacity: 0.5)
    Text(title)
      .font(.system(size: 70))
  }
}

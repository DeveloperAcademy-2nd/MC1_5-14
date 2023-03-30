//
//  Scene01_ClubRoom_Intro.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct Scene01_ClubRoom_Intro: View {
    var body: some View {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        VStack {
          Spacer().frame(height: 14)
          makeOpacityView(hex: 0x322725, opacity: 0.85)
          Spacer().frame(height: 14)
        }
        HStack {
          Text("정보 설명")
            .foregroundColor(.white)
            .font(.system(size: 40))
        }
      }
    }
}

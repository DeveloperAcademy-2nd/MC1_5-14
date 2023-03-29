//
//  IntroScene00.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct Scene00_Intro: View {
    var body: some View {
      ZStack {
        Image("Ditto")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        StartButton()
      }
    }
}

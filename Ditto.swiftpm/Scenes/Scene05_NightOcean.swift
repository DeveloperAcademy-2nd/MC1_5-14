//
//  Scene05_NightOcean.swift
//  
//
//  Created by 박의서 on 2023/03/31.
//

import SwiftUI

struct Scene05_NightOcean: View {
  @EnvironmentObject var data: Data
  var body: some View {
    ZStack {
        Image("Background_ep4")
          .resizable()
          .ignoresSafeArea(.all)
      VStack {
        HStack {
          Spacer().frame(width: 600)
          Button(action: {
            data.endingState = true
          }, label: {
            Image("Button_NightOcean")
              .resizable()
              .frame(width: 36, height: 36)
              .frame(maxHeight: .infinity, alignment: .bottomTrailing)
          })
        }
        Spacer().frame(height: 17)
      }
    }
  }
}

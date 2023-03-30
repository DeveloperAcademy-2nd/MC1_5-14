//
//  Scene02_Hallway.swift
//  
//
//  Created by 박의서 on 2023/03/31.
//

import SwiftUI

struct Scene02_Hallway: View {
  var body: some View {
    ZStack {
        Image("Background_ep1")
          .resizable()
          .ignoresSafeArea(.all)
      VStack {
        HStack {
          Spacer().frame(width: 600)
          Button(action: {}, label: {
            Image("Button_Hallway")
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

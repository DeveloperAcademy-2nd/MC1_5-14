//
//  Scene04_SkyView.swift
//  
//
//  Created by 박의서 on 2023/03/31.
//

import SwiftUI

struct Scene04_SkyView: View {
  var body: some View {
    ZStack {
        Image("Background_ep3")
          .resizable()
          .ignoresSafeArea(.all)
      VStack {
        HStack {
          Spacer().frame(width: 600)
          Button(action: {}, label: {
            Image("Button_SkyView")
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

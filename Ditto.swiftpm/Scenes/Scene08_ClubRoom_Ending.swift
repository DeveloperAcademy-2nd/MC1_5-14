//
//  Scene08_ClubRoom_Ending.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct Scene08_ClubRoom_Ending: View {
    var body: some View {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        VStack {
          Spacer().frame(height: 14)
          makeOpacityView(hex: 0x32272B, opacity: 0.85)
        }
      }
    }
}

struct Scene08_ClubRoom_Ending_Previews: PreviewProvider {
    static var previews: some View {
      Scene08_ClubRoom_Ending()
    }
}

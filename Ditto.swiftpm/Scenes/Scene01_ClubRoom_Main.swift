//
//  Scene01_ClubRoom_Main.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct Scene01_ClubRoom_Main: View {
    var body: some View {
      ZStack {
        Image("ClubRoom")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        HStack {
            VStack {
              SelectingPointingView()
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 225)
            }
            VStack {
              SelectingPointingView()
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 112)
            }
            VStack {
              SelectingPointingView()
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 225)
            }
            VStack {
              SelectingPointingView()
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 112)
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

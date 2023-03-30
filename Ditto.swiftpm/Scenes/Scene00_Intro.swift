//
//  IntroScene00.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct Scene00_Intro: View {
  var body: some View {
    NavigationView {
      ZStack {
        Image("Ditto")
          .resizable()
          .edgesIgnoringSafeArea(.all)
        NavigationLink(destination: Scene01_ClubRoom_Intro_Ending()
          .environmentObject(Data())
          .navigationBarBackButtonHidden(true)) {
          VStack {
            Text("START")
              .padding(.horizontal, 34)
              .padding(.vertical, 14)
              .foregroundColor(.white)
              .background(Color.init(hex: 0x8DADAB, alpha: 0.7))
              .cornerRadius(90)
              .frame(maxHeight: .infinity, alignment: .bottom)
            Spacer().frame(height: 33)
          }
        }
      }
    }
    }
}

//
//  Scene04_SkyView.swift
//  
//
//  Created by 박의서 on 2023/03/31.
//

import SwiftUI

struct Scene04_SkyView: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  @EnvironmentObject var data: Data
  var body: some View {
    NavigationView {
      ZStack {
        Image("Background_ep3")
          .resizable()
          .ignoresSafeArea(.all)
        VStack {
          HStack {
            Spacer().frame(width: 600)
            Button(action: {
              self.presentationMode.wrappedValue.dismiss()
              //            data.itemViewIsHidden = false
            }, label: {
              NavigationLink(destination: Scene01_ClubRoom_Main()
                .environmentObject(data)
                .navigationBarBackButtonHidden(true)) {
                  Image("Button_SkyView")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                }
            })
          }
          Spacer().frame(height: 17)
        }
      }
    }
  }
}

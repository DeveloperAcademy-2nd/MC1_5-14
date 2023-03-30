//
//  Scene03_ClassRoom.swift
//  
//
//  Created by 박의서 on 2023/03/31.
//

import SwiftUI

struct Scene03_ClassRoom: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  @EnvironmentObject var data: Data
  var body: some View {
    NavigationView {
      ZStack {
        Image("Background_ep2")
          .resizable()
          .ignoresSafeArea(.all)
        VStack {
          HStack {
            Spacer().frame(width: 600)
            Button(action: {
              self.presentationMode.wrappedValue.dismiss()
              //            data.itemViewIsHidden = true
            }, label: {
              NavigationLink(destination: Scene01_ClubRoom_Main()
                .environmentObject(data)
                .navigationBarBackButtonHidden(true)) {
                  Image("Button_ClassRoom")
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

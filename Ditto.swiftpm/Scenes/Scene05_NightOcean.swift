//
//  Scene05_NightOcean.swift
//  
//
//  Created by 박의서 on 2023/03/31.
//

import SwiftUI

struct Scene05_NightOcean: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  @EnvironmentObject var data: Data
  var body: some View {
    NavigationView {
      ZStack {
        Image("Background_ep4")
          .resizable()
          .ignoresSafeArea(.all)
        VStack {
          HStack {
            Spacer().frame(width: 600)
            Button(action: {
              self.presentationMode.wrappedValue.dismiss()
              //            data.itemViewIsHidden = false
              data.endingState = true
            }, label: {
              NavigationLink(destination: Scene01_ClubRoom_Main()
                .environmentObject(data)
                .navigationBarBackButtonHidden(true)) {
                  Image("Button_NightOcean")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .frame(maxHeight: .infinity, alignment: .bottomTrailing)
                }
            })
          }
          Spacer().frame(height: 17)
        }
      }.onAppear(perform:{
          data.showingBook = true
      })
    }
  }
}

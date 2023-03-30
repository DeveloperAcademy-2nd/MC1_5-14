//
//  SwiftUIView.swift
//  
//
//  Created by Jun on 2023/03/31.
//

import SwiftUI

struct SceneView: View {
    
    @EnvironmentObject var data: Data
    @State private var isHiding = [false,true,true,true]
    @State private var presentEpisode: Int = 0
    
    let bgImages = ["Ditto", "ClubRoom"]
    
    var body: some View {
        NavigationView {
            ZStack{
                Image(bgImages[presentEpisode])
                  .resizable()
                  .edgesIgnoringSafeArea(.all)
                VStack{
                    NavigationLink(destination:
                                    Scene00_Intro()
                        .environmentObject(Data())){
                            Scene00_Content()
                                .isHidden(isHiding[0])
                                .simultaneousGesture(TapGesture().onEnded{
                                    isHiding[0].toggle()
                                    isHiding[1].toggle()
                                    presentEpisode = 1
                                })
                        }
                    NavigationLink(destination:
                                    Scene01_ClubRoom()
                        .environmentObject(Data())
                        .navigationBarBackButtonHidden(true)){
                        Scene01_Content()
                            .isHidden(isHiding[1])
                            .simultaneousGesture(TapGesture().onEnded{
                                isHiding[1].toggle()
                                isHiding[0].toggle()
                                presentEpisode = 0
                            })
                    }
                }
            }
        }
    }
}

struct Scene00_Content: View {
    var body: some View {
        VStack {
          ZStack {
            Text("        ")
              .padding(.horizontal, 34)
              .padding(.vertical, 14)
              .foregroundColor(.white)
              .background(Color.init(hex: 0x8DADAB, alpha: 0.7))
              .cornerRadius(90)
              .frame(maxHeight: .infinity, alignment: .bottom)
            VStack {
              Image("START")
                .resizable()
                .frame(width: 53, height: 19)
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 15)
            }
          }
          Spacer().frame(height: 33)
        }
    }
}

struct Scene01_Content: View {
    var body: some View {
        VStack {
          ZStack {
            Text("SCENE 01")
              .padding(.horizontal, 34)
              .padding(.vertical, 14)
              .foregroundColor(.white)
              .background(Color.init(hex: 0x8DADAB, alpha: 0.7))
              .cornerRadius(90)
              .frame(maxHeight: .infinity, alignment: .bottom)
            VStack {
              Image("SCENE 01")
                .resizable()
                .frame(width: 53, height: 19)
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer().frame(height: 15)
            }
          }
          Spacer().frame(height: 33)
        }
    }
}
    
struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView()
    }
}

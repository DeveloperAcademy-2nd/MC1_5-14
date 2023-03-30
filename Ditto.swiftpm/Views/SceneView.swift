//
//  SwiftUIView.swift
//  
//
//  Created by Jun on 2023/03/31.
//

import SwiftUI

struct SceneView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("Ditto")
                  .resizable()
                  .edgesIgnoringSafeArea(.all)
                VStack{
                    NavigationLink(destination:
                                    Scene00_Intro()){
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
                      }.simultaneousGesture(TapGesture().onEnded{
                          hidden()
                      })
                    
                    NavigationLink(destination:
                                    Scene01_ClubRoom_Intro_Ending()){
                        Text("Scene01")
                    }
                }
            }
        }
    }
}

struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView()
    }
}

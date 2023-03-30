//
//  SwiftUIView.swift
//  
//
//  Created by Jun on 2023/03/31.
//

import SwiftUI

struct SceneView: View {
    
    @EnvironmentObject var data: Data
    @State var isHiding = [false, true, true, true, true, true, true]
    
    let bgImages = ["bgDitto", "bgClubRoom", "bgHallWay", "bgClassRoom", "bgSkyView", "bgNightOcean", "bgCherryBlossom", "bgEnding"]
    
    var body: some View {
        NavigationView {
            ZStack{
                Image(bgImages[data.presentEpisode])
                  .resizable()
                  .edgesIgnoringSafeArea(.all)
                VStack{
                    NavigationLink(destination:
                                    Scene00_Intro()){
                        Scene00_Content(isHiding:$isHiding)
                                .isHidden(isHiding[0])
                        }
                    NavigationLink(destination:
                                    Scene01_ClubRoom()){
                        Scene01_Content(isHiding:$isHiding)
                                .isHidden(isHiding[1])
                    }
                }
            }
        }
    }
}

struct Scene00_Content: View {
    @Binding var isHiding: [Bool]
    @EnvironmentObject var data: Data
    
    init(isHiding: Binding<[Bool]>) {
        self._isHiding = isHiding
    }
    
    var body: some View {
        VStack {
          ZStack {
            VStack {
            Spacer()
              Image("SCENE01")
                .resizable()
                .frame(width: 53, height: 19)
                .frame(maxHeight: .infinity, alignment: .bottom)
              Spacer()
            }
          }
        }.onTapGesture {
            isHiding[0].toggle()
            isHiding[1].toggle()
            data.presentEpisode = 1
        }
    }
}

struct Scene01_Content: View {
    
    @Binding var isHiding: [Bool]
    @EnvironmentObject var data: Data
    
    init(isHiding: Binding<[Bool]>) {
        self._isHiding = isHiding
    }
    
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
        }.onTapGesture {
            isHiding[1].toggle()
            isHiding[0].toggle()
            isHiding[2].toggle()
            data.presentEpisode = 2
        }
    }
}
    

struct Scene02_Content: View {
    
    @Binding var isHiding: [Bool]
    @EnvironmentObject var data: Data
    
    init(isHiding: Binding<[Bool]>) {
        self._isHiding = isHiding
    }
    
    var body: some View {
        VStack {
          Image("SCENE 02")
            .resizable()
            .frame(width: 53, height: 19)
            .frame(maxHeight: .infinity, alignment: .bottom)
          Spacer().frame(height: 15)
        }.onTapGesture {
            isHiding[2].toggle()
            isHiding[0].toggle()
            isHiding[3].toggle()
            data.presentEpisode = 3
        }
    }
}
    
struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView()
    }
}

//
//  StartButton.swift
//  
//
//  Created by 박의서 on 2023/03/29.
//

import SwiftUI

struct StartButton: View {
    var body: some View {
      VStack {
        Button {
        } label: {
          Text("START")
            .padding(.horizontal, 34)
            .padding(.vertical, 14)
            .foregroundColor(.white)
            .background(.red)
            .opacity(0.7)
            .cornerRadius(90)
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        Spacer().frame(height: 67)
      }
    }
}

//
//  SelectingPointingView.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct SelectingPointingView: View {
    var body: some View {
      ZStack {
        Circle()
          .fill(Color(hex: 0x396963, alpha: 0.5))
          .frame(width: 23, height: 23)
        Circle()
          .fill(Color(hex: 0xC2F8F1))
          .frame(width: 13, height: 13)
      }
    }
}


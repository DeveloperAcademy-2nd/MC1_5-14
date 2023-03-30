//
//  SelectingPointingView.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

struct SelectingPointingView: View {
  enum PointingState {
    case nonGuiding
    case guiding
    case unabled
  }
  @State private var pointingState: PointingState = .nonGuiding
  
  var body: some View {
    ZStack {
      switch(pointingState) {
      case .nonGuiding: // mint
        Circle()
          .fill(Color(hex: 0x396963, alpha: 0.5))
          .frame(width: 23, height: 23)
        Circle()
          .fill(Color(hex: 0xC2F8F1))
          .frame(width: 13, height: 13)
      case .guiding: // red
        Circle()
          .fill(Color(hex: 0x69394D, alpha: 0.5))
          .frame(width: 23, height: 23)
        Circle()
          .fill(Color(hex: 0xFF2171))
          .frame(width: 13, height: 13)
      case .unabled: // gray
        Circle()
          .fill(Color(hex: 0x303030, alpha: 0.5))
          .frame(width: 23, height: 23)
        Circle()
          .fill(Color(hex: 0x797777))
          .frame(width: 13, height: 13)
      }
    }
  }
  func setGuidingState() {
  }
}

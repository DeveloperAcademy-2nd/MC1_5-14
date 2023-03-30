//
//  EnvironmentValues.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

extension EnvironmentValues {
  var endingState: Bool {
    get { self[EndingState.self] }
    set { self[EndingState.self] = newValue }
  }
  var episodeStage: Int {
    get { self[EpisodeStage.self] }
    set { self[EpisodeStage.self] = newValue }
  }
}

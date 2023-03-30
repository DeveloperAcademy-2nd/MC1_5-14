//
//  EnvironmentValues.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import SwiftUI

extension EnvironmentValues {
  var episodeStage: Int {
    get { self[EpisodeStage.self] }
    set { self[EpisodeStage.self] = newValue }
  }
}

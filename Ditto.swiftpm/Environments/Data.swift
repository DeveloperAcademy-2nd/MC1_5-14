//
//  File.swift
//  
//
//  Created by 박의서 on 2023/03/30.
//

import Foundation

public class Data: ObservableObject {
  @Published public var endingState: Bool = false
  @Published public var buttondisabled: [Bool] = [false, false, false, false]
}

//
//  MVIContainer.swift
//  MyF1Project
//
//  Created by Valeriy Trusov on 25.08.2024.
//

import SwiftUI
import Combine

final class MVIContainer<Intent, Model>: ObservableObject {
  
  // MARK: Public
  
  let intent: Intent
  var model: Model
  
  // MARK: private
  
  private var cancellable: Set<AnyCancellable> = []
  
  // MARK: Life cycle
  
  init(intent: Intent, model: Model, modelChangePublisher: ObjectWillChangePublisher) {
    self.intent = intent
    self.model = model
    
    modelChangePublisher
      .sink(receiveValue: objectWillChange.send)
      .store(in: &cancellable)
  }
}

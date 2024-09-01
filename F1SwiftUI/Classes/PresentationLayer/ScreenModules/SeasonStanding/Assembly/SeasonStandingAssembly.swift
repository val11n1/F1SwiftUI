//
//  SeasonStandingAssembly.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import SwiftUI

class SeasonStandingAssembly {

// MARK: - Public
  func build(moduleOutput: SeasonStandingModuleOutput?, completion: ((SeasonStandingModuleInput?) -> Void)?) -> some View {
    let model = buildModel()
    let intent = buildIntent(model: model, moduleOutput: moduleOutput)
    let view = buildView(model: model, intent: intent)
    completion?(intent as SeasonStandingModuleInput)
    return view
  }
  
  // MARK: - Private
  private func buildModel() -> SeasonStandingModel {
    SeasonStandingModel()
}
  
  private func buildIntent(model: SeasonStandingModel, moduleOutput: SeasonStandingModuleOutput?) -> SeasonStandingIntent {
    SeasonStandingIntent(model: model, moduleOutput: moduleOutput)
}
  
  private func buildView(model: SeasonStandingModel, intent: SeasonStandingIntent) -> some View {
    let container = MVIContainer(
      intent: intent as SeasonStandingIntentProtocol,
      model: model as SeasonStandingModelStateProtocol,
      modelChangePublisher: model.objectWillChange)
    return SeasonStandingView(container: container)
  }
  
}
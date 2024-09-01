//
//  RootTabViewAssembly.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import SwiftUI

class RootTabViewAssembly {

// MARK: - Public
  func build(moduleOutput: RootTabViewModuleOutput?, completion: ((RootTabViewModuleInput?) -> Void)?) -> some View {
    let model = buildModel()
    let intent = buildIntent(model: model, moduleOutput: moduleOutput)
    let view = buildView(model: model, intent: intent)
    completion?(intent as RootTabViewModuleInput)
    return view
  }
  
  // MARK: - Private
  private func buildModel() -> RootTabViewModel {
    RootTabViewModel()
}
  
  private func buildIntent(model: RootTabViewModel, moduleOutput: RootTabViewModuleOutput?) -> RootTabViewIntent {
    RootTabViewIntent(model: model, moduleOutput: moduleOutput)
}
  
  private func buildView(model: RootTabViewModel, intent: RootTabViewIntent) -> some View {
    let container = MVIContainer(
      intent: intent as RootTabViewIntentProtocol,
      model: model as RootTabViewModelStateProtocol,
      modelChangePublisher: model.objectWillChange)
    return RootTabViewView(container: container)
  }
  
}
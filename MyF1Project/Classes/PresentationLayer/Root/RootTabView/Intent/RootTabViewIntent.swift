//
//  RootTabViewIntent.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import Foundation

class RootTabViewIntent {

  private weak var model:RootTabViewModelActionsProtocol?
  private weak var routeModel:RootTabViewModelRouterProtocol?
  private weak var moduleOutput:RootTabViewModuleOutput?

  init(model: (RootTabViewModelActionsProtocol & RootTabViewModelRouterProtocol)?, moduleOutput:RootTabViewModuleOutput?) {
    self.model = model
    self.routeModel = model
    self.moduleOutput = moduleOutput
  }
  
}

// MARK: - RootTabViewIntentProtocol
extension RootTabViewIntent: RootTabViewIntentProtocol {
  func viewOnAppear() {
    //
  }
}


// MARK: - RootTabViewModuleInput
extension RootTabViewIntent: RootTabViewModuleInput {
  
}
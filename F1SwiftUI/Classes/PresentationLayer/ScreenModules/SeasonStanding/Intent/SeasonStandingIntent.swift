//
//  SeasonStandingIntent.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import Foundation

class SeasonStandingIntent {

  private weak var model:SeasonStandingModelActionsProtocol?
  private weak var routeModel:SeasonStandingModelRouterProtocol?
  private weak var moduleOutput:SeasonStandingModuleOutput?

  init(model: (SeasonStandingModelActionsProtocol & SeasonStandingModelRouterProtocol)?, moduleOutput:SeasonStandingModuleOutput?) {
    self.model = model
    self.routeModel = model
    self.moduleOutput = moduleOutput
  }
  
}

// MARK: - SeasonStandingIntentProtocol
extension SeasonStandingIntent: SeasonStandingIntentProtocol {
  func viewOnAppear() {
    //
  }
}


// MARK: - SeasonStandingModuleInput
extension SeasonStandingIntent: SeasonStandingModuleInput {
  
}
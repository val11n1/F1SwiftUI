//
//  SeasonStandingModel.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import Foundation
import Combine

class SeasonStandingModel: ObservableObject, SeasonStandingModelStateProtocol {
  let routerSubject = SeasonStandingRouter.Subjects()
}

// MARK: - Actions
extension SeasonStandingModel: SeasonStandingModelActionsProtocol {
  
}

// MARK: - Route
extension SeasonStandingModel: SeasonStandingModelRouterProtocol {
  
}
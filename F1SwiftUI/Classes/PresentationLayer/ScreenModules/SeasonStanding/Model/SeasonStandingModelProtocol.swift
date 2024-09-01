//
//  SeasonStandingModelProtocol.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import Foundation

protocol SeasonStandingModelActionsProtocol: AnyObject {
  
}

protocol SeasonStandingModelStateProtocol {
  var routerSubject:SeasonStandingRouter.Subjects { get }
}

// MARK: - Route
protocol SeasonStandingModelRouterProtocol: AnyObject {
  
}
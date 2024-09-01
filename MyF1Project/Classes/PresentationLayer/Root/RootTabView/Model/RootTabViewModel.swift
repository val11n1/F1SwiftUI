//
//  RootTabViewModel.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import Foundation
import Combine

class RootTabViewModel: ObservableObject, RootTabViewModelStateProtocol {
  let routerSubject = RootTabViewRouter.Subjects()
}

// MARK: - Actions
extension RootTabViewModel: RootTabViewModelActionsProtocol {
  
}

// MARK: - Route
extension RootTabViewModel: RootTabViewModelRouterProtocol {
  
}
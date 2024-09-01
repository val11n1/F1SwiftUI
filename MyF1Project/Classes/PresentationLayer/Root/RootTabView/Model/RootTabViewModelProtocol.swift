//
//  RootTabViewModelProtocol.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import Foundation

protocol RootTabViewModelActionsProtocol: AnyObject {
  
}

protocol RootTabViewModelStateProtocol {
  var routerSubject:RootTabViewRouter.Subjects { get }
}

// MARK: - Route
protocol RootTabViewModelRouterProtocol: AnyObject {
  
}
//
//  RootTabViewRouter.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import SwiftUI

struct RootTabViewRouter: RouterProtocol {
  typealias RouterScreenType = ScreenType
  typealias RouterAlertType = AlertScreen
  
  let subjects: Subjects
  let intent: RootTabViewIntentProtocol
}

// MARK: - Navigation Screens

extension RootTabViewRouter {
  enum ScreenType: RouterScreenProtocol {
    case testNavigation(param: Any)
    
    var routeType: RouterScreenPresentationType {
      switch self {
      case .testNavigation:
        return .navigationLink
      }
    }
  }
  
  @ViewBuilder
  func makeScreen(type: RouterScreenType) -> some View {
    switch type {
    case .testNavigation(_):
      Text("Hallo new amo module!")
    }
  }
  
  func onDismiss(screenType: RouterScreenType) {}
}

// MARK: - Alerts

extension RootTabViewRouter {
  enum AlertScreen: RouterAlertScreenProtocol {
    case defaultAlert(title: String, message: String?)
  }
  
  func makeAlert(type: RouterAlertType) -> Alert {
    switch type {
    case let .defaultAlert(title, message):
      return Alert(title: Text(title),
                   message: message.map { Text($0) },
                   dismissButton: .cancel(Text("Cancel")))
    }
  }
}
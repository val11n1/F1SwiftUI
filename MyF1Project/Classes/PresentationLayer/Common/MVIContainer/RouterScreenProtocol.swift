//
//  RouterScreenProtocol.swift
//  MyF1Project
//
//  Created by Valeriy Trusov on 25.08.2024.
//

protocol RouterScreenProtocol: RouterNavigationViewScreenProtocol & RouterNavigationStackScreenProtocol & RouterSheetScreenProtocol {
  var routeType: RouterScreenPresentationType { get }
}

enum RouterScreenPresentationType {
  case sheet
  case fullScreenCover
  case navigationLink
  
  // To make it work, you have to use NavigationStack
  case navigationDestination
}

//
//  RouterNavigationViewModifier.swift
//  MyF1Project
//
//  Created by Valeriy Trusov on 25.08.2024.
//

import SwiftUI
import Combine

protocol RouterNavigationViewScreenProtocol {}

struct RouterNavigationViewModifier<Screen, ScreenType> where Screen: View, ScreenType: RouterNavigationViewScreenProtocol {
    
    // MARK: Public
    
    let publisher: AnyPublisher<ScreenType, Never>
    var screen: (ScreenType) -> Screen
    let onDismiss: ((ScreenType) -> Void)?
    
    // MARK: Private
    
    @State private var screenType: ScreenType?
}

// MARK: - ViewModifier

extension RouterNavigationViewModifier: ViewModifier {

    func body(content: Content) -> some View {
        ZStack {
//            NavigationLink(
//                "",
//                isActive: Binding<Bool>(
//                    get: { screenType != nil },
//                    set: {
//                        if !$0 {
//                            if let type = screenType { onDismiss?(type) }
//                            screenType = nil
//                        }
//                    }),
//                destination: {
//                    if let type = screenType {
//                        screen(type)
//                    } else {
//                        EmptyView()
//                    }
//                })
          
            NavigationLink("") {
              
            }.navigationDestination(isPresented: Binding<Bool>(
              get: { screenType != nil },
              set: {
                  if !$0 {
                      if let type = screenType { onDismiss?(type) }
                      screenType = nil
                  }
              })) {
                if let type = screenType {
                    screen(type)
                } else {
                    EmptyView()
                }
            }
            content
        }
        .onReceive(publisher) { screenType = $0 }
    }
}


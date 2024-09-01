//
//  RouterCloseModifier.swift
//  MyF1Project
//
//  Created by Valeriy Trusov on 25.08.2024.
//

import SwiftUI
import Combine

struct RouterCloseModifier: ViewModifier {
  
  // MARK: Public
  
  let publisher: AnyPublisher<Void, Never>
  
  // MARK: Private
  
  @Environment(\.presentationMode) private var presentationMode
  
  // MARK: Life cycle
  
  func body(content: Content) -> some View {
    content
      .onReceive(publisher) { _ in
        presentationMode.wrappedValue.dismiss()
      }
  }
}


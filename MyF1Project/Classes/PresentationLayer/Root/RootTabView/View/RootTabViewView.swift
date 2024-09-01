//
//  RootTabViewView.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import SwiftUI

struct RootTabViewView: View {
  
  @StateObject var container: MVIContainer<RootTabViewIntentProtocol, RootTabViewModelStateProtocol>
  
  private var intent: RootTabViewIntentProtocol { container.intent }
  private var model: RootTabViewModelStateProtocol { container.model }
  
  var body: some View {
    TabView {
      SeasonStandingAssembly().build(moduleOutput: nil, completion: nil)
        .tabItem {
          Label(
            title: { Text("Standing") },
            icon: { Image(systemName: "42.circle") }
          )
        }
    }
    .onAppear {
      UITabBar.appearance().backgroundColor = .lightGray
    }
  }
}

#Preview {
  RootTabViewAssembly().build(moduleOutput: nil, completion: nil)
}

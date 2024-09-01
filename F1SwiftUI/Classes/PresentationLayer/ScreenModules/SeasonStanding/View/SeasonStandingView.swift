//
//  SeasonStandingView.swift
//  MyF1Project
//
//  Created by val on 25/08/2024.
//  Copyright © 2024 MyF1App. All rights reserved.
//

import SwiftUI

struct SeasonStandingView: View {
  
  @StateObject var container: MVIContainer<SeasonStandingIntentProtocol, SeasonStandingModelStateProtocol>
  
  private var intent: SeasonStandingIntentProtocol { container.intent }
  private var model: SeasonStandingModelStateProtocol { container.model }
  
  var body: some View {
    Text("Hallo amo module")
      .onAppear(perform: intent.viewOnAppear)
      .modifier(SeasonStandingRouter(subjects: model.routerSubject, intent: intent))
  }
}

#Preview {
  SeasonStandingAssembly().build(moduleOutput: nil, completion: nil)
}

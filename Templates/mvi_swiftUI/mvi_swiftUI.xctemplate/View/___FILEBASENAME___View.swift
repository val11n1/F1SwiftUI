// ___FILEHEADER___

import SwiftUI

struct ___VARIABLE_productName:identifier___View: View {
  
  @StateObject var container: MVIContainer<___VARIABLE_productName:identifier___IntentProtocol, ___VARIABLE_productName:identifier___ModelStateProtocol>
  
  private var intent: ___VARIABLE_productName:identifier___IntentProtocol { container.intent }
  private var model: ___VARIABLE_productName:identifier___ModelStateProtocol { container.model }
  
  var body: some View {
    Text("Hallo amo module")
      .onAppear(perform: intent.viewOnAppear)
      .modifier(___VARIABLE_productName:identifier___Router(subjects: model.routerSubject, intent: intent))
  }
}

#Preview {
  ___VARIABLE_productName:identifier___Assembly().build(
    moduleOutput: nil,
    completion: nil
  )
}

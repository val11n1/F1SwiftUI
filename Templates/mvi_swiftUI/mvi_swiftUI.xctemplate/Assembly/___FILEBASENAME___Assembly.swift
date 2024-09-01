// ___FILEHEADER___

import SwiftUI

class ___VARIABLE_productName:identifier___Assembly {
  
  // MARK: - Public
  func build(moduleOutput: ___VARIABLE_productName:identifier___ModuleOutput?, completion: ((___VARIABLE_productName:identifier___ModuleInput?) -> Void)?) -> some View {
    let model = buildModel()
    let intent = buildIntent(model: model, moduleOutput: moduleOutput)
    let view = buildView(model: model, intent: intent)
    completion?(intent as ___VARIABLE_productName:identifier___ModuleInput)
    return view
  }
  
  // MARK: - Private
  private func buildModel() -> ___VARIABLE_productName:identifier___Model {
  ___VARIABLE_productName:identifier___Model()
  }
  
  private func buildIntent(model: ___VARIABLE_productName:identifier___Model, moduleOutput: ___VARIABLE_productName:identifier___ModuleOutput?) -> ___VARIABLE_productName:identifier___Intent {
  ___VARIABLE_productName:identifier___Intent(model: model, moduleOutput: moduleOutput)
  }
  
  private func buildView(model: ___VARIABLE_productName:identifier___Model, intent: ___VARIABLE_productName:identifier___Intent) -> some View {
    let container = MVIContainer(
      intent: intent as ___VARIABLE_productName:identifier___IntentProtocol,
      model: model as ___VARIABLE_productName:identifier___ModelStateProtocol,
      modelChangePublisher: model.objectWillChange)
    return ___VARIABLE_productName:identifier___View(container: container)
  }
  
}

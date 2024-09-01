// ___FILEHEADER___

import Foundation

class ___VARIABLE_productName:identifier___Intent {
  
  private weak var model:___VARIABLE_productName:identifier___ModelActionsProtocol?
  private weak var routeModel:___VARIABLE_productName:identifier___ModelRouterProtocol?
  private weak var moduleOutput:___VARIABLE_productName:identifier___ModuleOutput?
  
  init(model: (___VARIABLE_productName:identifier___ModelActionsProtocol & ___VARIABLE_productName:identifier___ModelRouterProtocol)?, moduleOutput:___VARIABLE_productName:identifier___ModuleOutput?) {
    self.model = model
    self.routeModel = model
    self.moduleOutput = moduleOutput
  }
  
}

// MARK: - ___VARIABLE_productName:identifier___IntentProtocol
extension ___VARIABLE_productName:identifier___Intent: ___VARIABLE_productName:identifier___IntentProtocol {
  func viewOnAppear() {
    //
  }
}


// MARK: - ___VARIABLE_productName:identifier___ModuleInput
extension ___VARIABLE_productName:identifier___Intent: ___VARIABLE_productName:identifier___ModuleInput {
  
}

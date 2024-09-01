//
//  MyF1ProjectApp.swift
//  MyF1Project
//
//  Created by Valeriy Trusov on 24.08.2024.
//

import SwiftUI

@main
struct MyF1ProjectApp: App {
    var body: some Scene {
        WindowGroup {
          RootTabViewAssembly().build(
            moduleOutput: nil,
            completion: nil
          )
        }
    }
}

//
//  ClubhouseApp.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import SwiftUI

@main
struct ClubhouseApp: App {
  
  @StateObject private var viewModel = RoomViewModel()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(viewModel)
    }
  }
}

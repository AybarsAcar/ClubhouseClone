//
//  Image+Extensions.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import SwiftUI

extension Image {
  static let appImages = AppImages()
  static let appIcons = AppIcons()
}


struct AppImages {
  /*** Image Assets ***/
  let profilePic = Image("profile_pic")
}

struct AppIcons {
  /** SFSymbols **/
  let search = Image(systemName: "magnifyingglass")
  let invite = Image(systemName: "envelope.open")
  let calendar = Image(systemName: "calendar")
  let notificationBell = Image(systemName: "bell")
  let home = Image(systemName: "house")
  let grid = Image(systemName: "circle.grid.3x3.fill")
  let person = Image(systemName: "person.fill")
  let chatBubble = Image(systemName: "ellipsis.bubble.fill")
  let back = Image(systemName: "chevron.backward")
  let down = Image(systemName: "chevron.down")
  let document = Image(systemName: "doc")
  let gear = Image(systemName: "gear")
  let plus = Image(systemName: "plus")
  let handRaised = Image(systemName: "hand.raised")
  let ellipsis = Image(systemName: "ellipsis")
  let star = Image(systemName: "staroflife.fill")
  let mute = Image(systemName: "speaker.slash.fill")
}

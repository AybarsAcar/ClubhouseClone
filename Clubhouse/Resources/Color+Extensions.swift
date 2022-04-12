//
//  Color+Extensions.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import SwiftUI

struct AppTheme {
  let background = Color("Background")
  let customBlack = Color("Black")
  let cardBackground = Color("CardBackground")
  let cardShadowTint = Color("CardShadowTint")
  let customGreen = Color("Green")
  let customGrey = Color("Grey")
  let customLightGray = Color("LightGray")
  let customRed = Color("Red")
  let customSecondaryBackground = Color("SecondaryBackground")
  let textBlack = Color("TextBlack")
  let textYellow = Color("TextYellow")
}

extension Color {
  static let theme = AppTheme()
}

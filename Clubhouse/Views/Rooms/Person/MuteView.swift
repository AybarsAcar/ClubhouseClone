//
//  MuteView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 13/4/2022.
//

import SwiftUI

struct MuteView: View {
  var body: some View {
    Image.appIcons.mute
      .padding(5)
      .background(.white)
      .clipShape(Circle())
      .shadow(color: .theme.cardShadowTint, radius: 1, x: 0, y: 1)
  }
}

struct MuteView_Previews: PreviewProvider {
  static var previews: some View {
    MuteView()
  }
}

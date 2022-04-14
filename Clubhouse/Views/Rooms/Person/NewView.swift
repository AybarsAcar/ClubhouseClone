//
//  NewView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 13/4/2022.
//

import SwiftUI

struct NewView: View {
  var body: some View {
    Text("🎉")
      .padding(5)
      .background(.white)
      .clipShape(Circle())
      .shadow(color: .theme.cardShadowTint, radius: 1, x: 0, y: 1)
  }
}

struct NewView_Previews: PreviewProvider {
  static var previews: some View {
    NewView()
  }
}

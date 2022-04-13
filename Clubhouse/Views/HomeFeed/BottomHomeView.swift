//
//  BottomHomeView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 13/4/2022.
//

import SwiftUI

struct BottomHomeView: View {
  var body: some View {
    ZStack {
      Image.appIcons.grid
        .font(Font.Nunito.bold(size: 24))
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing, 15)
      
      Button {
        
      } label: {
        Label("Start a room", systemImage: "plus")
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 9)
      .font(Font.Nunito.bold(size: 18))
      .foregroundColor(.white)
      .background(Color.theme.customGreen)
      .cornerRadius(21, antialiased: true)

    }
    .frame(maxWidth: .infinity, maxHeight: 105, alignment: .top)
    .background(
      .linearGradient(colors: [.theme.background.opacity(0.1), .theme.background], startPoint: .top, endPoint: .bottom)
    )
  }
}

struct BottomHomeView_Previews: PreviewProvider {
  static var previews: some View {
    BottomHomeView()
  }
}

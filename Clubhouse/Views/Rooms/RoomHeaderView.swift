//
//  RoomHeaderView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 15/4/2022.
//

import SwiftUI

struct RoomHeaderView: View {
  var body: some View {
    HStack(spacing: 20) {
      Label("All rooms", systemImage: "chevron.down")
        .font(Font.Nunito.bold(size: 18))
      
      Spacer()
      
      Image.appIcons.document
        .font(Font.Nunito.bold(size: 24))
      
      Image.appImages.profilePic
        .resizable()
        .frame(width: 32, height: 32)
        .cornerRadius(11)
    }
    .foregroundColor(.theme.textBlack)
    .frame(maxWidth: .infinity, alignment: .center)
    .padding(.horizontal, 15)
  }
}

struct RoomHeaderView_Previews: PreviewProvider {
  static var previews: some View {
      RoomHeaderView()
  }
}

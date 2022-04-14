//
//  BottomRoomView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 15/4/2022.
//

import SwiftUI

struct BottomRoomView: View {
  
  enum BottomRoomViewAction {
    case leave
  }
  
  typealias BottomRoomActionHandler = (_ action: BottomRoomViewAction) -> Void
  
  let handler: BottomRoomActionHandler
  
  init(handler: @escaping BottomRoomView.BottomRoomActionHandler) {
    self.handler = handler
  }
  
  var body: some View {
    HStack(spacing: 22) {
      Text("✌️ Leave quietly")
        .font(Font.Nunito.bold(size: 16))
        .foregroundColor(.theme.customRed)
        .padding(.horizontal, 13)
        .padding(.vertical, 8)
        .background(Color.theme.customLightGray)
        .cornerRadius(18)
        .onTapGesture {
          handler(.leave)
        }
      
      Spacer()
      
      Image.appIcons.plus
        .font(Font.Nunito.semiBold(size: 24))
        .padding(8)
        .background(Color.theme.customLightGray)
        .clipShape(Circle())
      
      Image.appIcons.handRaised
        .font(Font.Nunito.semiBold(size: 24))
        .padding(4)
        .background(Color.theme.customLightGray)
        .clipShape(Circle())
    }
    .padding(.horizontal, 15)
    .padding(.top, 10)
    .frame(maxWidth: .infinity, maxHeight: 100, alignment: .top)
    .background(Color.theme.cardBackground)
  }
}

struct BottomRoomView_Previews: PreviewProvider {
  static var previews: some View {
    BottomRoomView { _ in }
  }
}

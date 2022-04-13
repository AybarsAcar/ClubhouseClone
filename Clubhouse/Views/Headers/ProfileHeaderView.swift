//
//  ProfileHeaderView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 13/4/2022.
//

import SwiftUI

struct ProfileHeaderView: View {
  
  enum ProfileHeaderAction {
    case back
  }
  
  typealias ProfileHeaderActionsHandler = (_ action: ProfileHeaderAction) -> Void
  
  let handler: ProfileHeaderActionsHandler
  
  init(handler: @escaping ProfileHeaderView.ProfileHeaderActionsHandler) {
    self.handler = handler
  }
  
  var body: some View {
    HStack(spacing: 24) {
      
      Button {
        handler(.back)
      } label: {
        Image.appIcons.back
      }

      
      Spacer()
      Text("@")
      Image.appIcons.gear
    }
    .font(Font.Nunito.bold(size: 24))
    .foregroundColor(.theme.textBlack)
    .frame(maxWidth: .infinity)
    .padding(.horizontal, 15)
  }
}

struct ProfileHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHeaderView { _ in}
      .previewLayout(.sizeThatFits)
  }
}

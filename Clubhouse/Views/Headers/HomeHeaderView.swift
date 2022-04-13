//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import SwiftUI

struct HomeHeaderView: View {
  
  enum HomeHeaderction {
    case profile
  }
  
  typealias HomeHeaderActionsHandler = (_ action: HomeHeaderction) -> Void
  
  let handler: HomeHeaderActionsHandler
  
  init(handler: @escaping HomeHeaderView.HomeHeaderActionsHandler) {
    self.handler = handler
  }
  
  var body: some View {
    HStack(spacing: 20) {
      Image.appIcons.search
      
      Spacer()
      
      Image.appIcons.invite
      
      Image.appIcons.calendar
      
      Image.appIcons.notificationBell
      
      Button {
        handler(.profile)
      } label: {
        Image.appImages.profilePic
          .resizable()
          .scaledToFill()
          .frame(width: 32, height: 32)
          .cornerRadius(11)
      }

    }
    .font(.Nunito.bold(size: 24))
    .frame(maxWidth: .infinity, maxHeight: 50)
    .padding(.horizontal, 15)
  }
}

struct HomeHeaderVIew_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HomeHeaderView { _ in }
      HomeHeaderView { _ in }
        .preferredColorScheme(.dark)
    }
    .previewLayout(.sizeThatFits)
  }
}

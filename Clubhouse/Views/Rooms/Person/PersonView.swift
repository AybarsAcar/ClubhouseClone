//
//  PersonView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 15/4/2022.
//

import SwiftUI

struct PersonView: View {
  
  let person: Person
  
    var body: some View {
      VStack {
        Group {
          PersonImageView(image: person.img)
          
          HStack(spacing: 0) {
            if person.state.contains(.moderator) {
              Image.appIcons.star
                .font(Font.Nunito.bold(size: 8))
                .foregroundColor(.white)
                .padding(2)
                .background(.green)
                .clipShape(Circle())
                .padding(.trailing, 5)
            }
            
            Text(person.firstName)
              .foregroundColor(.theme.textBlack)
              .font(Font.Nunito.extraBold(size: 13))
              .lineLimit(1)
          }
        }
        .cornerRadius(35)
      }
      .overlay(
        MuteView()
          .offset(x: 40, y: 20)
          .opacity(person.state.contains(.muted) ? 1 : 0)
      )
      .overlay(
        NewView()
          .offset(x: -20, y: 20)
          .opacity(person.state.contains(.new) ? 1 : 0)
      )
    }
}

struct PersionView_Previews: PreviewProvider {
    static var previews: some View {
      PersonView(person: FeedRoom.dummyData[0].hosts[0])
    }
}

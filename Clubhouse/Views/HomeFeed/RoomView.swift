//
//  RoomView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import SwiftUI

struct RoomView: View {
  
  let room: FeedRoom
  
  var body: some View {
    VStack(alignment: .leading) {
      if let groupName = room.groupName {
        CurrentGroupView(groupName: groupName)
      }
      
      Text(room.roomName)
        .font(.Nunito.bold(size: 16))
        .foregroundColor(.theme.textBlack)
      
      HStack(alignment: .top) {
        if room.hostPics.count > 1 {
          FeedPicView(picture: room.hostPics.first!)
            .overlay(
              FeedPicView(picture: room.hostPics.last!)
                .offset(x: 16, y: 16)
            )
        }
        else {
          FeedPicView(picture: room.hostPics.first!)
        }
        
        VStack(alignment: .leading, spacing: 3) {
          ForEach(room.participants, id: \.self) { participant in
            Text("\(participant) 💬")
              .font(Font.Nunito.bold(size: 16))
              .foregroundColor(.theme.textBlack)
          }
          
          HStack(spacing: 3) {
            Text(room.numOfParticipants.description)
              .padding(.trailing, 5)
            
            Image.appIcons.person
            
            Text("/")
              .padding(.horizontal, 5)
            
            Text(room.numOfHosts.description)
              .padding(.trailing, 5)
            
            Image.appIcons.chatBubble
          }
          .font(Font.Nunito.semiBold(size: 14))
          .foregroundColor(.theme.customGrey)
        }
        .padding(.leading, 30)
      }
      
    }
    .padding(.vertical, 17)
    .padding(.horizontal, 20)
    .frame(maxWidth: .infinity, alignment: .leading)
    .background(Color.theme.cardBackground)
    .cornerRadius(19)
    .shadow(color: .theme.cardShadowTint, radius: 1, x: 0, y: 1)
    .padding(.horizontal, 15)
  }
}

// MARK: - FeedPicView

struct FeedPicView: View {
  
  let picture: String
  
  private let size: CGFloat = 38
  
  var body: some View {
    Image(picture)
      .resizable()
      .frame(width: size, height: size)
      .cornerRadius(15)
  }
}


struct RoomView_Previews: PreviewProvider {
  static var previews: some View {
    RoomView(room: FeedRoom.dummyData[2])
  }
}

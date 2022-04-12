//
//  UpcomingRoomsView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import SwiftUI

struct UpcomingRoomsView: View {
  
  let upcomingRooms: [UpcomingRoom]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      ForEach(upcomingRooms) { item in
        GroupRoomView(upcomingRoom: item)
      }
    }
    .padding(.vertical, 15)
    .padding(.leading, 35)
    .padding(.trailing, 15)
    .frame(maxWidth: .infinity, alignment: .leading)
    .background(Color.theme.customSecondaryBackground)
    .cornerRadius(18)
    .padding(.horizontal, 15)
  }
}

// MARK: - GroupRoomView

struct GroupRoomView: View {
  
  let upcomingRoom: UpcomingRoom
  
  var body: some View {
    HStack(alignment: .top, spacing: 10) {
      Text(upcomingRoom.date, style: .time)
        .font(.Nunito.semiBold(size: 10))
        .foregroundColor(.theme.textYellow)
      
      VStack(alignment: .leading) {
        
        if let groupName = upcomingRoom.groupName {
          CurrentGroupView(groupName: groupName)
        }
        
        Text(upcomingRoom.roomName)
          .lineLimit(1)
          .font(.Nunito.bold(size: 14))
          .foregroundColor(.theme.textBlack)
      }
    }
  }
}

// MARK: - CurrentGroupView

struct CurrentGroupView: View {
  
  let groupName: String
  
  var body: some View {
    HStack {
      Text(groupName.uppercased())
        .font(.Nunito.bold(size: 8))
        .foregroundColor(.theme.textBlack)
      
      Image.appIcons.home
        .font(.Nunito.bold(size: 10))
        .foregroundColor(.green)
    }
  }
}

struct UpcomingRoomsView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      UpcomingRoomsView(upcomingRooms: UpcomingRoom.dummyData)
        .previewLayout(.sizeThatFits)
      GroupRoomView(upcomingRoom: UpcomingRoom.dummyData[0])
        .previewLayout(.sizeThatFits)
    }
  }
}


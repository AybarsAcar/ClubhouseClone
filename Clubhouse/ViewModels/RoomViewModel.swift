//
//  RoomViewModel.swift
//  Clubhouse
//
//  Created by Aybars Acar on 12/4/2022.
//

import Foundation

final class RoomViewModel: ObservableObject {
  
  private(set) var activeRoom: FeedRoom = FeedRoom.dummyData[0]
  
  func setActive(_ room: FeedRoom) {
    self.activeRoom = room
  }
}

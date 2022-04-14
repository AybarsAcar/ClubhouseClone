//
//  ActiveRoomView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 15/4/2022.
//

import SwiftUI

struct ActiveRoomView: View {
  
  @Environment(\.dismiss) private var dismiss
  
  @EnvironmentObject var viewModel: RoomViewModel
  
  var body: some View {
    
    ZStack(alignment: .bottom) {
      
      VStack {
        
        RoomHeaderView()
          .padding(.bottom, 30)
        
        ScrollView {
          HStack(alignment: .top) {
            
            Text(viewModel.activeRoom.roomName)
              .padding(.leading, 25)
            Spacer()
            Image.appIcons.ellipsis
              .padding(.top, 10)
              .padding(.trailing, 25)
          }
          .padding(.top, 15)
          .foregroundColor(.theme.textBlack)
          .font(Font.Nunito.bold(size: 20))
          
          HostsView(people: viewModel.activeRoom.hosts)
            .padding(.horizontal, 15)
          
          if !viewModel.activeRoom.followedBySpeaker.isEmpty {
            OthersView(title: "Followed by the speakers", people: viewModel.activeRoom.followedBySpeaker)
          }
          
          OthersView(title: "Others in the room", people: viewModel.activeRoom.othersInRoom)
          
        }
        .padding(.bottom, 110)
        .background(Color.theme.cardBackground)
        .cornerRadius(37)
      }
      .padding(.top, 65)
      
      BottomRoomView { action in
        switch action {
        case .leave:
          dismiss()
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.theme.background)
    .ignoresSafeArea()
    .navigationBarHidden(true)
  }
}

struct ActiveRoomView_Previews: PreviewProvider {
  static var previews: some View {
    ActiveRoomView()
      .environmentObject(RoomViewModel())
  }
}

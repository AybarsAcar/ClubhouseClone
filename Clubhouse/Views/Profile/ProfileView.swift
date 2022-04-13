//
//  ProfileView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 13/4/2022.
//

import SwiftUI

struct ProfileView: View {
  
  @Environment(\.dismiss) private var dismiss
  
  var body: some View {
    ZStack {
      VStack(alignment: .leading) {
        ProfileHeaderView { action in
          switch action {
          case .back:
            dismiss()
          }
        }
        
        Group {
          Image.appImages.profilePic
            .resizable()
            .frame(width: 76, height: 76)
            .cornerRadius(30, antialiased: true)
          
          Text("Tunde Adegoroye")
            .font(Font.Nunito.bold(size: 16))
          
          Text("@tundsdev")
            .font(Font.Nunito.bold(size: 12))
            .padding(.top, 1)
          
          HStack {
            HStack(spacing: 0) {
              Text("117")
                .font(Font.Nunito.bold(size: 16))
                .padding(.trailing, 5)
              
              Text("followers")
                .font(Font.Nunito.bold(size: 12))
            }
            .padding(.trailing, 30)
            
            HStack(spacing: 0) {
              Text("21")
                .font(Font.Nunito.bold(size: 16))
                .padding(.trailing, 5)
              
              Text("following")
                .font(Font.Nunito.bold(size: 12))
            }
            .padding(.trailing, 30)
          }
          .padding(.top, 15)
          
          Text("Lead App Developer | Youtube teaching iOS Development on my channel called tundsdev\n\nhttps://youtube.com")
            .padding(.top, 10)
            .font(Font.Nunito.semiBold(size: 14))
          
          HStack(alignment: .top) {
            Image("person_0")
              .resizable()
              .frame(width: 38, height: 38)
              .cornerRadius(15)
            
            VStack(alignment: .leading) {
              Text("Joined 18 Dec 2020")
                .font(Font.Nunito.regular(size: 12))
              
              Text("Nominated by ")
                .font(Font.Nunito.regular(size: 12)) +
              
              Text("Jane Doe")
                .font(Font.Nunito.bold(size: 12))
            }
          }
          
        }
        .foregroundColor(.theme.textBlack)
        .padding(.horizontal, 15)
        
        Spacer()
      }
    }
    .navigationBarHidden(true)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.theme.background)
  }
}

struct ProfileVIew_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}

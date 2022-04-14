//
//  PersonImageView.swift
//  Clubhouse
//
//  Created by Aybars Acar on 13/4/2022.
//

import SwiftUI

struct PersonImageView: View {
  
  let image: String?
  
  var body: some View {
    if let image = image {
      Image(image)
        .resizable()
        .scaledToFill()
        .clipShape(ContainerRelativeShape())
    } else {
      Image.appIcons.person
        .resizable()
        .scaledToFill()
        .background(Color.theme.customLightGray)
        .clipShape(ContainerRelativeShape())
    }
  }
}

struct PersonImageView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      PersonImageView(image: "person_0")
      PersonImageView(image: nil)
    }
    .previewLayout(.sizeThatFits)
  }
}

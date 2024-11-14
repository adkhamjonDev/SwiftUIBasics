//
//  Images.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("charleyrivers") // name if the image should be paste
            //.renderingMode(.template) // before use to change coror of the image foregoundColor
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .frame(width:300,height: 200)
            .foregroundColor(.red)
            //.clipped()
            //.cornerRadius(150)
//            .clipShape(
//                //Circle()
//                //RoundedRectangle(cornerRadius: 25)
//                //Ellipse()
//                Circle()
//            )
    }
}

#Preview {
    Images()
}

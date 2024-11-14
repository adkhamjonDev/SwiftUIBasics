//
//  SystemIcons.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
        Image(systemName: "car.front.waves.left.and.right.and.up")
            .resizable()
            //.renderingMode(.original) // multicolor icons
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.font(.caption)
            //.font(.system(size: 200))
            .foregroundColor(.red)
            .frame(width:300,height:300) // set resizable when you want to use it
            //.clipped()
    }
    
    //find names from sf icons app
    // https://developer.apple.com/sf-symbols/
}

#Preview {
    SystemIcons()
}

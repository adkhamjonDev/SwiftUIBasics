//
//  Padding.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
                .padding(.horizontal,20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                color:.black.opacity(0.3),
                radius: 10,
                x:0.0,y:0.0
            )
        )
        .padding(.horizontal,10)
//            .frame(maxWidth: .infinity,alignment: .leading)
//            .background(.red)
//            .padding(.leading,20)
        
//            .background(.yellow)
            //.padding()
//            .padding(.all,10)
//            .padding(.leading,20)
//            .padding(.vertical,10)
//            .padding(.horizontal,10)
//            .padding(.top,10)
//            .padding(.bottom,10)
//            .padding(.leading,10)
//            .padding(.trailing,10)
//            .background(.blue)
    }
}

#Preview {
    Padding()
}

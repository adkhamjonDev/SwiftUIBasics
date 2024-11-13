//
//  ColorUIColorHexColor.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 13/11/24.
//

import SwiftUI


struct Colors:View{
    var body:some View{
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300,height: 200)
//            .shadow(radius: 10)
            .shadow(color:Color("CustomColor").opacity(0.3),radius: 10,x:-10.0,y:-10.0)
    }
}

#Preview {
    Colors()
}

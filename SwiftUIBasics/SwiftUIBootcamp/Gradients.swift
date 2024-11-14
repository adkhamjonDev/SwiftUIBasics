//
//  Gradients.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 13/11/24.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(
            cornerRadius: 25
        )
        .fill(
            //Color.red
//            LinearGradient(
//                gradient: Gradient(colors:[Color.red,Color.blue]),
//                startPoint: .topLeading,
//                endPoint: .bottom
//            )
            
//            RadialGradient(
//                gradient: Gradient(colors:[Color.red,Color.blue]),
//                center: .center,
//                startRadius: 5,
//                endRadius: 200)
            
            AngularGradient(
                colors: [Color.red,Color.blue],
                center: .topLeading,
                angle: .degrees(180+45)
            )
        )
        .frame(
            width:300,
            height: 200
        )
        
    }
}


#Preview {
    Gradients()
}

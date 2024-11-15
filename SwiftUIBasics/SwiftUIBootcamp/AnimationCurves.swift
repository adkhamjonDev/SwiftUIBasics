//
//  AnimationCurves.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State var isAnimating:Bool = false
    let timing:Double = 10.0
    
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(.spring(response: 0.5,dampingFraction: 0.5,blendDuration: 3))
                //.animation(.spring())
                //.animation(Animation.linear(duration: timing))
//                .shadow(radius: 10)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                ).animation(Animation.easeIn(duration: timing))
//                .shadow(radius: 10)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                ).animation(Animation.easeInOut(duration: timing))
//                .shadow(radius: 10)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                ).animation(Animation.easeOut(duration: timing))
//                .shadow(radius: 10)
        }
    }
}

#Preview {
    AnimationCurves()
}

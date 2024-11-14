//
//  BackgroundsAndOverlays.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                //.red
//                //LinearGradient(gradient: Gradient(colors:[.red,.blue]), startPoint: .leading, endPoint: .bottom)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors:[.red,.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100,height: 100,alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors:[.blue,.red]), startPoint: .leading, endPoint: .trailing))
//
//                    .frame(width: 120,height: 120,alignment: .center)
//            )
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100,height: 100,alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 100,height: 100,alignment: .center)
//            )
        
        // background - под
        // overlay - над
        
//        Rectangle()
//            .frame(width: 100,height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50,height: 50)
//                , alignment: .center
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150,height: 150)
//                ,alignment: .center
//            )
        
        Image(systemName:"heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors:[.purple,.red]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100,height: 100,alignment: .center)
                    .shadow(color:.purple,radius: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 30,height: 30)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color:.blue,radius: 10)
                        
                        , alignment: .bottomTrailing
                    )
            )
        
    }
}

#Preview {
    BackgroundsAndOverlays()
}

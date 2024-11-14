//
//  VStackHStackZStack.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct VStackHStackZStack: View {
    
    // VStack - vertical
    // HStack - horizontal
    // ZStack - zIndex(back to front)
    var body: some View {
        
//        ZStack(
//            alignment: .bottom,
//            content: {
//                        
//                            Rectangle()
//                                .fill(.red)
//                                .frame(width: 200,height: 200,alignment: .center)
//                
//                            Rectangle()
//                                .fill(.green)
//                                .frame(width: 150,height: 150,alignment: .center)
//                
//                            Rectangle()
//                                .fill(.orange)
//                                .frame(width: 100,height: 100,alignment: .center)
//                
//                
//            }
        
//        VStack(alignment: .center,spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            
//            Text("Items in your cart:")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        VStack(spacing: 50){
           
                ZStack{
                    Circle()
                        .frame(width: 100,height: 100)
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                }
            // same things
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(
                        Circle()
                            .frame(width: 100,height: 100)
                    )
            }
        
    }
}

#Preview {
    VStackHStackZStack()
}

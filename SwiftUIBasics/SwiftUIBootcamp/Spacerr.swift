//
//  Spacer.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Spacerr: View {
    var body: some View {
//        HStack(
//            spacing:0
//        ){
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .frame(width: 50,height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50,height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50,height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//        }
//        .background(.yellow)
        
        VStack {
            HStack(
                spacing:0
            ){
                
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            //.background(.yellow)
            .padding(.horizontal)
            //.background(.blue)
            
            Spacer()
                .frame(width: 10)
            
            Rectangle()
                .frame(height: 55)
        }
        //.background(.yellow)
        
    }
}

#Preview {
    Spacerr()
}

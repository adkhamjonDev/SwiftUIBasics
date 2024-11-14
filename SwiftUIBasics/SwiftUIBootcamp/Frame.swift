//
//  Frame.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Text("Hello, World!")
            .background(.red)
            .frame(height: 100,alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(.pink)
            .frame(height:400)
            .background(.green)
            .frame(maxHeight: .infinity,alignment: .top)
            .background(.yellow)
//            .background(.green)
//            .frame(maxWidth: .infinity,maxHeight:.infinity,alignment: .leading)
////            .frame(
////                width:300,
////                height:300,
////                alignment: .center
////            )
//        .background(.red)
    }
}

#Preview {
    Frame()
}

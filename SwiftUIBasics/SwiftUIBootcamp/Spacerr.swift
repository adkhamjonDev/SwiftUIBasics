//
//  Spacer.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Spacer: View {
    var body: some View {
        HStack(
            spacing:0
        ){
            Rectangle()
                .frame(width: 100,height: 100)
            
//            Spacer()
//                .frame(height: 10)
            
            Spacer()
            
            Rectangle()
                .fill(.red)
                .frame(width: 100,height: 100)
        }
        .background(.blue)
    }
}

#Preview {
    Spacer()
}
